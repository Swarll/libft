/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grigaux <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/08 13:27:54 by grigaux           #+#    #+#             */
/*   Updated: 2019/10/15 09:39:23 by grigaux          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	unsigned char	*dst1;
	unsigned char	*src1;
	unsigned int	i;
	unsigned char	d;

	i = 0;
	d = (unsigned char)c;
	dst1 = (unsigned char *)dst;
	src1 = (unsigned char *)src;
	while (i < n)
	{
		dst1[i] = (unsigned char)src1[i];
		if ((unsigned char)src1[i] == d)
			return (&dst[i + 1]);
		i++;
	}
	return (0);
}
