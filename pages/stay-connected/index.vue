<template>
    <IContainer>
        <ClientOnly>
            <IForm v-model="schema">
                <h5>Join our mailing list</h5>
                <div v-if="!saved">
                    <IFormGroup required>
                        <IFormLabel for="firstName">First name</IFormLabel>
                        <IInput id="firstName" name="firstName" placeholder="First name" :disabled="saving"
                            :error="errorTypes" />
                    </IFormGroup>
                    <IFormGroup required>
                        <IFormLabel for="lastName">Last name</IFormLabel>
                        <IInput id="lastName" name="lastName" placeholder="Last name" :disabled="saving"
                            :error="errorTypes" />
                    </IFormGroup>
                    <IFormGroup required>
                        <IFormLabel for="email">Email</IFormLabel>
                        <IInput id="email" name="email" placeholder="Email" :disabled="saving" :error="errorTypes" />
                    </IFormGroup>
                </div>
                <div class="bottom-section">
                    <IButton v-if="!saved" color="primary" :loading="saving" @click="requestToJoinMailingList"
                        :disabled="!schema.touched || schema.invalid">
                        Submit</IButton>
                    <IToast v-else v-model="saved" color="success" dismissible>
                        <p>Thank you! You will be notified of upcoming events.</p>
                    </IToast>
                </div>
            </IForm>
        </ClientOnly>
    </IContainer>
</template>
<script setup>
import { useForm } from "@inkline/inkline/composables";

useHead({
  titleTemplate: "Stay Connected | %s",
});

const runtimeConfig = useRuntimeConfig()
const { schema } = useForm({
    firstName: {
        validators: [{ name: "required" }],
    },
    lastName: {
        validators: [{ name: "required" }],
    },
    email: {
        validators: [
            {
                name: "required",
            },
            {
                name: "custom",
                message: "Please enter a valid email address.",
                validator: emailValidator,
            },
        ],
    },
})

const saving = ref(false);
const saved = ref(false);

const errorTypes = ["touched", "invalid"];

const clear = () => {
  schema.value.firstName.value = ''
  schema.value.lastName.value = ''
  schema.value.email.value = ''
}

const requestToJoinMailingList = async () => {
    saving.value = true;

    await $fetch(`/api/public/mailing-list/join?organization=XENITEAS`, {
        baseURL: runtimeConfig.public.apiBase,
        method: "POST",
        mode: 'no-cors',
        headers: {
            'Content-Type': 'x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'firstName': schema.value.firstName.value,
            'lastName': schema.value.lastName.value,
            'email': schema.value.email.value
        })
    }).then(() => {
        clear();
        saving.value = false;
        saved.value = true;
    })
};

</script>
<style>
form {
    margin: 0 auto;
    max-width: 500px;
}

.bottom-section {
    display: flex;
    justify-content: center;
    padding: 28px;
}
</style>
