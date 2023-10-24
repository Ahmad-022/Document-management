import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"
// Connects to data-controller="sortable"
export default class extends Controller {
  connect() {
    this.sortable=Sortable.create(this.element,{
      animation:150
     })

    }
  }
