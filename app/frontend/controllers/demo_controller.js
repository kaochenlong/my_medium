// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "content" ]

  pushme() {
    console.log(this.contentTarget.value)
  }

  pushit() {
    console.log(this.contentTarget.value)
  }
}
