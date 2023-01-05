import * as React from 'react'
import Box from '@mui/material/Box'

import kaiju from '../../assets/BigIdeaKaiju.jpg'

function Home () {
  return (
    <Box
      sx={{
        height: '100vh',
        width: '100vw',
        boxSizing: 'border-box',
        backgroundColor: '#000000'
      }}
      py={{ xs: 0, sm: 8 }}
    >
      <Box
        sx={{
          height: '100%',
          backgroundImage: `url(${kaiju})`,
          backgroundPosition: 'center',
          backgroundSize: 'contain',
          backgroundRepeat: 'no-repeat'
        }}
      ></Box>
    </Box>
  )
}

export default Home
