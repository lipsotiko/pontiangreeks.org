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
              <INavItem to="/">Home</INavItem>
              <INavItem to="/about-us">About Us</INavItem>
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
              <IDropdown events="hover" size="sm" :hoverHideDelay="0">
                <INavItem stopPropagation>Youth Group</INavItem>
                <template #body>
                  <IDropdownItem to="/youth-group/dance-troups"
                    >Dance Troups</IDropdownItem
                  >
                  <IDropdownItem to="/youth-group/youth-news"
                    >News</IDropdownItem
                  >
                  <IDropdownItem to="/youth-group/photo-gallery"
                    >Photo Gallery</IDropdownItem
                  >
                </template>
              </IDropdown>
              <INavItem to="/book-store">Book Store</INavItem>
              <INavItem to="/contact-us">Contact Us</INavItem>
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
            <IColumn md="6" lg="3">
              <div class="footer-section">
                <h4>Support Us</h4>
                <form
                  action="https://www.paypal.com/donate"
                  method="post"
                  target="_top"
                >
                  <input type="hidden" name="business" value="FMY3M8BSTUL4U" />
                  <input type="hidden" name="no_recurring" value="0" />
                  <input type="hidden" name="currency_code" value="USD" />
                  <input
                    type="image"
                    src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif"
                    border="0"
                    name="submit"
                    title="PayPal - The safer, easier way to pay online!"
                    alt="Donate with PayPal button"
                  />
                </form>
              </div>
            </IColumn>
            <IColumn md="6" lg="3">
              <div class="footer-section">
                <h4>Follow Us</h4>
                <p>
                  <a href="https://www.facebook.com/groups/32039846607/">
                    <img src="~/assets/images/2016/10/facebook.png" />
                  </a>
                </p>
              </div>
            </IColumn>
            <IColumn md="6" lg="3">
              <div class="footer-section">
                <h4>Quick Links</h4>
                <ul>
                  <li>
                    <a href="/">Home</a>
                  </li>
                  <li>
                    <a href="/about-us/">About Us</a>
                  </li>
                  <li>
                    <a href="/events/">Events</a>
                  </li>
                  <li>
                    <a href="/history/">History</a>
                  </li>
                  <li>
                    <a href="/youth-group/">Youth Group</a>
                  </li>
                  <li>
                    <a href="/book-store/">Book Store</a>
                  </li>
                  <li>
                    <a href="/contact-us/">Contact Us</a>
                  </li>
                </ul>
              </div>
            </IColumn>
            <IColumn md="6" lg="3">
              <div class="footer-section">
                <h4>Contact Us</h4>
                <p>
                  Pontian Greek Society of Chicago<br />
                  P.O. Box 6127<br />
                  Bloomingdale, IL 60108-6127<br /><br />
                </p>
                <Email />
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
