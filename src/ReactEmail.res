module TabIndex = {
  type t
  external int: int => t = "%identity"
  external float: float => t = "%identity"
  external string: string => t = "%identity"
}
module Html = {
  @react.component @module("@react-email/html")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
    ~lang: string=?,
    ~ltr: string=?,
  ) => React.element = "Html"
}

module Head = {
  @react.component @module("@react-email/head")
  external make: (~children: React.element=?) => React.element = "Head"
}

module Body = {
  @react.component @module("@react-email/body")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
  ) => React.element = "Body"
}

module Tailwind = {
  @react.component @module("@react-email/tailwind")
  external make: (~config: {..}, ~children: React.element=?) => React.element = "Tailwind"
}

module Heading = {
  type headingAs = @string [#h1 | #h2 | #h3 | #h4 | #h5 | #h6]
  @react.component @module("@react-email/heading")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
    ~\"as": headingAs=?,
  ) => React.element = "Heading"
}

module Column = {
  @react.component @module("@react-email/column")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
  ) => React.element = "Column"
}

module Row = {
  @react.component @module("@react-email/row")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
  ) => React.element = "Row"
}

module Container = {
  @react.component @module("@react-email/container")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
  ) => React.element = "Container"
}

module Font = {
  type webFont = {
    url: string,
    format: string,
  }
  module FontWeight = {
    type t
    external float: float => t = "%identity"
    external string: string => t = "%identity"
  }
  @react.component @module("@react-email/font")
  external make: (
    ~children: React.element=?,
    ~key: string=?,
    ~fontFamily: string,
    ~fallbackFontFamily: string,
    ~webFont: webFont=?,
    ~fontWeight: FontWeight.t,
    ~fontStyle: string,
  ) => React.element = "Font"
}

module Button = {
  @react.component @module("@react-email/button")
  external make: (
    ~tabIndex: TabIndex.t=?,
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
    ~href: string,
    ~target: string=?,
  ) => React.element = "Button"
}

module Hr = {
  @react.component @module("@react-email/hr")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
  ) => React.element = "Hr"
}

module Img = {
  @react.component @module("@react-email/img")
  external make: (
    ~tabIndex: TabIndex.t=?,
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
    ~src: string,
    ~alt: string,
    ~width: string,
    ~height: string,
  ) => React.element = "Img"
}

module Link = {
  @react.component @module("@react-email/link")
  external make: (
    ~tabIndex: TabIndex.t=?,
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
    ~href: string,
    ~target: string=?,
  ) => React.element = "Link"
}

module Markdown = {
  @react.component @module("@react-email/markdown")
  external make: (
    ~tabIndex: TabIndex.t=?,
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
    ~markdownCustomStyles: {..}=?,
    ~markdownContainerStyles: {..}=?,
  ) => React.element = "Markdown"
}

module Preview = {
  @react.component @module("@react-email/preview")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
  ) => React.element = "Preview"
}

module Section = {
  @react.component @module("@react-email/section")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
  ) => React.element = "Section"
}

module Text = {
  @react.component @module("@react-email/text")
  external make: (
    ~id: string=?,
    ~style: ReactDOM.Style.t=?,
    ~children: React.element=?,
    ~className: string=?,
    ~key: string=?,
  ) => React.element = "Text"
}

module Render = {
  type options = {
    pretty?: bool,
    plainText?: bool,
  }
  @module("@react-email/render")
  external make: (React.element, options) => promise<string> = "render"
}

let render = Render.make
