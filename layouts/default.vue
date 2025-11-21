<template>
  <div>
    <ILayout>
      <ILayoutHeader>
        <INavbar>
          <INavbarBrand to="/">
            <img src="~/assets/images/2016/10/logo.png" class="image -fluid" />
          </INavbarBrand>
          <INavbarCollapsible>
            <INav size="sm">
              <INavItem to="/" exact-active-class="-active">Home</INavItem>
              <INavItem to="/about-us" exact-active-class="-active">About</INavItem>
              <INavItem to="/membership" exact-active-class="-active">Membership</INavItem>
              <INavItem to="/events" exact-active-class="-active">Events</INavItem>
              <IDropdown events="hover" size="sm" :hoverHideDelay="0">
                <INavItem stopPropagation :active="historyPathActive()">History</INavItem>
                <template #body>
                  <IDropdownItem to="/history/chronology" :active="isExactPath('/history/chronology')">Chronology
                  </IDropdownItem>
                  <IDropdownItem to="/history/religion" :active="isExactPath('/history/religion')">Religion
                  </IDropdownItem>
                  <IDropdownItem to="/history/dialect" :active="isExactPath('/history/dialect')">Dialect</IDropdownItem>
                  <IDropdownItem to="/history/poems" :active="isExactPath('/history/poems')">Poems</IDropdownItem>
                  <IDropdownItem to="/history/dances" :active="isExactPath('/history/dances')">Dances</IDropdownItem>
                  <IDropdownItem to="/history/oral-stories" :active="isExactPath('/history/oral-stories')">Oral Stories
                  </IDropdownItem>
                </template>
              </IDropdown>
              <INavItem to="/book-store" exact-active-class="-active">Book Store</INavItem>
            </INav>
            <div class="action-buttons">
              <!-- <IButton link color="primary" to="/stay-connected">
                Stay Connected
              </IButton> -->
              <IButton outline color="primary" to="/membership">
                Join
              </IButton>
            </div>
          </INavbarCollapsible>
        </INavbar>
      </ILayoutHeader>
      <ILayoutContent>
        <slot />
      </ILayoutContent>
      <ILayoutFooter>
        <ILayout class="footer-sections">
          <IRow>
            <IColumn md="6" lg="4">
              <div class="footer-section">
                <h4>Follow</h4>
                <p>
                  <a href="https://www.facebook.com/groups/32039846607/" target="_blank">
                    <img src="~/assets/images/2016/10/facebook.png" />
                  </a>
                </p>
              </div>
            </IColumn>
            <IColumn md="6" lg="4">
              <div class="footer-section">
                <h4>Quick Links</h4>
                <ul>
                  <li>
                    <a href="/about-us/">About Us</a>
                  </li>
                  <li>
                    <a href="/membership/">Membership</a>
                  </li>
                  <li>
                    <a href="/events">Events</a>
                  </li>
                  <li>
                    <a href="/history/">History</a>
                  </li>
                  <li>
                    <a href="/book-store/">Book Store</a>
                  </li>
                </ul>
              </div>
            </IColumn>
            <IColumn md="6" lg="4">
              <div class="footer-section">
                <h4>Contact</h4>
                <XeniteasContact />
                <p>
                  Email:
                  <a :href="'mailto:' + xeniteasEmail">{{ xeniteasEmail }}</a>
                </p>
              </div>
            </IColumn>
          </IRow>
        </ILayout>
        <p class="copyright">
          Copyright © {{ new Date().getFullYear() }} <br />
          Pontian Greek Society of Chicago
        </p>
      </ILayoutFooter>
    </ILayout>
  </div>
</template>
<script setup lang="ts">
const route = useRoute()
const { xeniteasEmail } = useAppConfig();

const historyPathActive = () => {
  return route.path.startsWith("/history/")
};

const isExactPath = (path) => {
  return route.path === path
}

</script>
<style scoped lang="scss">
.copyright {
  padding: 28px;
  color: #ffffff;
  text-align: center;
  background-color: var(--color-primary);
  height: 120px;
  margin: 0;
}

.footer-sections {
  margin-top: 22px;
  padding: 28px;
  border-top: solid 2px var(--color-primary);
}

.footer-section {
  min-height: 188px;
}

.light-theme .footer-sections {
  background: var(--color-gray-50);
}

.dark-theme .footer-sections {
  background: var(--color-gray-900);
}

li {
  margin: 0;
}

.action-buttons a {
  margin: 0 12px;
}
</style>
