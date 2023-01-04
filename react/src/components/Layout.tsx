import * as React from 'react'
import Container from '@mui/material/Container'
import { Outlet } from 'react-router-dom'

function Layout () {
  return (
    <Container className="App" maxWidth="xl" disableGutters={true}>
      <Outlet />
    </Container>
  )
}

export default Layout
