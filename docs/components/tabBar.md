---
layout: detail
title: Bars - tab
description: Tab bars with Orange branding
---

---

**Page Summary**

* [Specifications references](#specifications-references)
* [Accessibility](#accessibility)
* [Standard tab bar](#standard-tab-bar)

---

## Specifications references

- [Design System Manager - Bars: tab](https://system.design.orange.com/0c1af118d/p/08dab8-bars-tab/b/778ed0)
- [Apple guideline - Tab bars](https://developer.apple.com/design/human-interface-guidelines/components/navigation-and-search/tab-bars/)

## Accessibility

Please follow [accessibility criteria for development](https://a11y-guidelines.orange.com/en/mobile/ios/)

## Standard tab bar

Tab bar is a standard iOS component. It use bar items to navigate between differents views.

Bar Item contains an icon and a title.

Example with 4 bar items :

```swift
TabView {
    GuidelinesList()
        .tabItem {
            Label("Guidelines", image: "Guideline-DNA_32")
        }
    ComponentsList()
        .tabItem {
            Label("Components", image: "component-atom_32")
        }
    ModulesList()
        .tabItem {
            Label("Modules", image: "Module-molecule_32")
        }
    ODSDemoAboutView()
        .tabItem {
            Label("About", image: "info_32")
        }
}
```