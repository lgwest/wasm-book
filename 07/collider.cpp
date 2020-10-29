#include "game.hpp"

Collider::Collider(double radius) {
    m_ParentRotation = NULL;
    m_ParentX = NULL;
    m_ParentY = NULL;

    m_Radius = radius;
}

bool Collider::CCHitTest( Collider* collider ) {
    double sine = sin(*m_ParentRotation);
    double cosine = cos(*m_ParentRotation);

    double rx = m_X * cosine - m_Y * sine;
    double ry = m_X * sine + m_Y * cosine;

    double dist_x = (*m_ParentX + rx) - collider->m_X;
    double dist_y = (*m_ParentY + ry) - collider->m_Y;
    double radius = m_Radius + collider->m_Radius;

    if( dist_x * dist_x + dist_y * dist_y <= radius * radius ) {
        return true;
    }

    return false;
}

bool Collider::HitTest( Collider *collider ) {
    if( m_ParentRotation != NULL && m_ParentX != NULL && m_ParentY != NULL ) {
        return CCHitTest( collider );
    }

    double dist_x = m_X - collider->m_X;
    double dist_y = m_Y - collider->m_Y;
    double radius = m_Radius + collider->m_Radius;

    if( dist_x * dist_x + dist_y * dist_y <= radius * radius ) {
        return true;
    }

    return false;
}

    void Collider::SetParentInformation( double* rotation, double* x, double* y ) {
        m_ParentRotation = rotation;
        m_ParentX = x;
        m_ParentY = y;
    }
