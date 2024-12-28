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
                    <IButton v-if="!saved" block color="primary" :loading="saving" @click="requestToJoinMailingList"
                        :disabled="!schema.touched || schema.invalid">
                        Submit</IButton>
                    <IToast v-else color="success">
                        <p>Thank you! You will be notified of upcoming events.</p>
                    </IToast>
                </div>
            </IForm>
        </ClientOnly>
    </IContainer>
</template>
<script setup>
import { useForm } from "@inkline/inkline/composables";

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

const requestToJoinMailingList = async () => {
    saving.value = true;

    const API_PATH = 'https://poneres-portal-erg0gza3d2hwc6dh.eastus2-01.azurewebsites.net';

    await $fetch(`${API_PATH}/api/public/mailing-list/join`, {
        method: "POST",
        mode: 'no-cors',
        headers: {
            'Content-Type': 'x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            'organization': 'XENITEAS',
            'firstName': schema.value.firstName.value,
            'lastName': schema.value.lastName.value,
            'email': schema.value.email.value
        })
    }).then(() => {
        saving.value = false;
    })

    saving.value = false;
    saved.value = true;
};

</script>
<style>
form {
    margin: 0 auto;
    width: 500px;
}

.bottom-section {
    margin: 28px 0;
}
</style>
