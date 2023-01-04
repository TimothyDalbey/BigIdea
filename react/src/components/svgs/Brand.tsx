import React from 'react'
import Box from '@mui/material/Box'

const Brand = (props: any) => {
  const color = (props.fill) ? props.fill : '#fff'
  return (
    <Box {...props}>
      <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
        <circle cx="50" cy="50" r="47.5" stroke={color} strokeWidth="5"/>
      </svg>
    </Box>
  )
}

export default Brand
