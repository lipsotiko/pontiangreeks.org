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
              <INavItem to="/about-us">About</INavItem>
              <INavItem to="/membership">Membership</INavItem>
              <IDropdown events="hover" size="sm" :hoverHideDelay="0">
                <INavItem stopPropagation>Events</INavItem>
                <template #body>
                  <IDropdownItem to="/events/calendar">Calendar</IDropdownItem>
                  <IDropdownItem to="/events/lectures">Lectures</IDropdownItem>
                  <IDropdownItem to="/events/conferences"
                    >Conferences</IDropdownItem
                  >
                </template>
              </IDropdown>
              <IDropdown events="hover" size="sm" :hoverHideDelay="0">
                <INavItem stopPropagation>History</INavItem>
                <template #body>
                  <IDropdownItem to="/history/chronology"
                    >Chronology</IDropdownItem
                  >
                  <IDropdownItem to="/history/religion">Religion</IDropdownItem>
                  <IDropdownItem to="/history/dialect">Dialect</IDropdownItem>
                  <IDropdownItem to="/history/poems">Poems</IDropdownItem>
                  <IDropdownItem to="/history/dances">Dances</IDropdownItem>
                  <IDropdownItem to="/history/oral-stories"
                    >Oral Stories</IDropdownItem
                  >
                </template>
              </IDropdown>
              <INavItem to="/book-store">Book Store</INavItem>
            </INav>
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
                  <a href="https://www.facebook.com/groups/32039846607/">
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
                    <a href="/events/">Events</a>
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
const { xeniteasEmail } = useAppConfig();
</script>
<style scoped lang="scss">
.copyright {
  padding: 28px;
  color: #ffffff;
  text-align: center;
  background-color: $primary;
  height: 120px;
  margin: 0;
}
.footer-sections {
  margin-top: 22px;
  padding: 28px;
  border-top: solid 2px $primary;
}

.footer-section {
  min-height: 128px;
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
</style>
