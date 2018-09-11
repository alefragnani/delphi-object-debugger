# ObjectDebugger

The **ObjectDebugger** is a run-time Object Inspector for Delphi VCL applications

> The **original project** was released by **Marco Cantù** at http://github.com/marcocantu/ObjectDebugger. Since its release in 2016, I decided to [make some contributions](https://github.com/marcocantu/ObjectDebugger/pulls/alefragnani), but most of them were not merged. So, I decided to evolve this fork.

## Usage

The component is very simple. Just drop it on you `MainForm` :smile:. When you open your application, its window will appear. It looks, and works, like **Delphi Object Inspector**, but at run-time. 

You just have to open the desired form, choose the component and change its properties. 

Alternatively, you can also use `Ctrl + Click` on any component in the application's form and the component will be automatically selected/updated in the **Object Debugger**.

## Compatibility

It currently supports the following Delphi versions:

* Delphi Seattle
* Delphi Berlin
* Delphi Tokyo

## Installation

* Clone the repo `https://github.com/alefragnani/ObjectDebugger.git`
* Open the `ObjectDebugger.dpk` package
* Compile and Install

## Support ObjectDebugger

While **ObjectDebugger** is free and open source, if you find it useful, please consider supporting it.

I've been working on this on my spare time, and while I enjoy developing it, I would like to be able to give more attention to its growth.

<table align="center" width="60%" border="0">
  <tr>
    <td>
      <a title="Paypal" href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=EP57F3B6FXKTU&lc=US&item_name=Alessandro%20Fragnani&item_number=delphi&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted"><img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif"/></a>
    </td>
    <td>
      <a title="Paypal" href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=EP57F3B6FXKTU&lc=BR&item_name=Alessandro%20Fragnani&item_number=delphi&currency_code=BRL&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted"><img src="https://www.paypalobjects.com/pt_BR/i/btn/btn_donate_SM.gif"/></a>
    </td>
    <td>
      <a title="Patreon" href="https://www.patreon.com/alefragnani"><img src="images/become-a-patron-rounded.png"/></a>
    </td>
  </tr>
</table>

---

## License

This project is covered by _two licenses_

The **original code** developed by **Marco Cantù**, and the [contributions that I made](https://github.com/marcocantu/ObjectDebugger/pulls/alefragnani) on that original code, are licensed under [MPL 2.0](https://www.mozilla.org/en-US/MPL/2.0/)

The **contributions** that I made on new source files are licensed under [MIT](https://opensource.org/licenses/MIT)