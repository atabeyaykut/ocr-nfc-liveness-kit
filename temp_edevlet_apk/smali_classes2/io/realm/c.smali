.class public final Lio/realm/c;
.super Lio/realm/x;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;I)V
    .locals 0

    iput p4, p0, Lio/realm/c;->d:I

    invoke-direct {p0, p1, p2, p3}, Lio/realm/x;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lio/realm/c;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->g(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    check-cast p1, [B

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lio/realm/internal/OsList;->a([B)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_0
    check-cast p1, Ljava/util/UUID;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lio/realm/internal/OsList;->m(Ljava/util/UUID;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lio/realm/c;->d:I

    .line 2
    .line 3
    const-string v1, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_2

    .line 12
    :pswitch_0
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 23
    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v6, "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte"

    .line 27
    .line 28
    aput-object v6, v4, v3

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    aput-object p1, v4, v2

    .line 39
    .line 40
    invoke-static {v5, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :pswitch_1
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    instance-of v0, p1, [B

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 59
    .line 60
    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v6, "byte[]"

    .line 63
    .line 64
    aput-object v6, v4, v3

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    aput-object p1, v4, v2

    .line 75
    .line 76
    invoke-static {v5, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :goto_2
    if-nez p1, :cond_4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    instance-of v0, p1, Ljava/util/UUID;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    :goto_3
    return-void

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 95
    .line 96
    new-array v4, v4, [Ljava/lang/Object;

    .line 97
    .line 98
    const-string v6, "java.util.UUID"

    .line 99
    .line 100
    aput-object v6, v4, v3

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    aput-object p1, v4, v2

    .line 111
    .line 112
    invoke-static {v5, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lio/realm/c;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :pswitch_0
    int-to-long v2, p1

    .line 10
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->s(J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Long;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-class v0, Ljava/lang/Long;

    .line 21
    .line 22
    iget-object v1, p0, Lio/realm/x;->c:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne v1, v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-class v0, Ljava/lang/Integer;

    .line 28
    .line 29
    if-ne v1, v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-class v0, Ljava/lang/Short;

    .line 41
    .line 42
    if-ne v1, v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->shortValue()S

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-class v0, Ljava/lang/Byte;

    .line 54
    .line 55
    if-ne v1, v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Long;->byteValue()B

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_1
    return-object p1

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "Unexpected element type: "

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :pswitch_1
    int-to-long v2, p1

    .line 87
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->s(J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, [B

    .line 92
    .line 93
    return-object p1

    .line 94
    :goto_2
    int-to-long v2, p1

    .line 95
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->s(J)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/util/UUID;

    .line 100
    .line 101
    return-object p1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lio/realm/c;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    int-to-long v2, p1

    .line 10
    check-cast p2, Ljava/lang/Number;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    invoke-virtual {v1, v2, v3, p1, p2}, Lio/realm/internal/OsList;->z(JJ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    int-to-long v2, p1

    .line 21
    check-cast p2, [B

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/OsList;->t(J[B)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    int-to-long v2, p1

    .line 28
    check-cast p2, Ljava/util/UUID;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/OsList;->F(JLjava/util/UUID;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lio/realm/c;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    int-to-long v2, p1

    .line 10
    check-cast p2, Ljava/lang/Number;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    invoke-virtual {v1, v2, v3, p1, p2}, Lio/realm/internal/OsList;->P(JJ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    int-to-long v2, p1

    .line 21
    check-cast p2, [B

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/OsList;->J(J[B)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    int-to-long v2, p1

    .line 28
    check-cast p2, Ljava/util/UUID;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/OsList;->V(JLjava/util/UUID;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
