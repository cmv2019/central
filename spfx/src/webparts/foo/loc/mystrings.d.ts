declare interface IFooWebPartStrings {
  PropertyPaneDescription: string;
  BasicGroupName: string;
  DescriptionFieldLabel: string;
}

declare module 'FooWebPartStrings' {
  const strings: IFooWebPartStrings;
  export = strings;
}
