import * as React from 'react';
import styles from './Foo.module.scss';
import { IFooProps } from './IFooProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class Foo extends React.Component<IFooProps, {}> {
  public render(): React.ReactElement<IFooProps> {
    return (
      <div className={ styles.foo }>
      
      </div>
    );
  }
}
