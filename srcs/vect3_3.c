/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   vect3_3.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ashih <ashih@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/02/08 14:05:05 by ashih             #+#    #+#             */
/*   Updated: 2018/04/11 07:07:46 by ashih            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "rtv1.h"

void		v_add(t_vect3 *v1, t_vect3 *v2, t_vect3 *result)
{
	*result = *v1 + *v2;
}

void		v_subtract(t_vect3 *v1, t_vect3 *v2, t_vect3 *result)
{
	*result = *v1 - *v2;
}