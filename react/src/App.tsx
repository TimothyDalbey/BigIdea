import React from 'react'
import type { RouteObject } from 'react-router-dom'
import { useRoutes /*, useParams */ } from 'react-router-dom'
import { ThemeProvider } from '@mui/material/styles'

import Layout from './components/Layout'
import Home from './components/pages/Home'
import NoMatch from './components/pages/NoMatch'

import theme from './themes/theme'
import './styles/App.scss'

function App () {
  const routes: RouteObject[] = [
    {
      path: '/',
      element: <Layout />,
      children: [
        { index: true, element: <Home /> },
        { path: '*', element: <NoMatch /> }
      ]
    }
  ]

  const routesCompiled = useRoutes(routes)

  return (
    <ThemeProvider theme={theme}>
      {routesCompiled}
    </ThemeProvider>
  )
}

export default App
