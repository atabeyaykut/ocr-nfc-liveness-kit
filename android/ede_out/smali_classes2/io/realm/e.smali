.class public final Lio/realm/e;
.super Lio/realm/x;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;I)V
    .locals 0

    iput p4, p0, Lio/realm/e;->d:I

    invoke-direct {p0, p1, p2, p3}, Lio/realm/x;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/realm/e;->d:I

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
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v1, p1}, Lio/realm/internal/OsList;->b(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    check-cast p1, Lorg/bson/types/ObjectId;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lio/realm/internal/OsList;->i(Lorg/bson/types/ObjectId;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lio/realm/e;->d:I

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
    goto :goto_1

    .line 12
    :pswitch_0
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

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
    const-string v6, "java.lang.Boolean"

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
    :goto_1
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    instance-of v0, p1, Lorg/bson/types/ObjectId;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :goto_2
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
    const-string v6, "org.bson.types.ObjectId"

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
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lio/realm/e;->d:I

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
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->s(J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    return-object p1

    .line 17
    :goto_0
    int-to-long v2, p1

    .line 18
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->s(J)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lorg/bson/types/ObjectId;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lio/realm/e;->d:I

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
    check-cast p2, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/OsList;->u(JZ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_0
    int-to-long v2, p1

    .line 21
    check-cast p2, Lorg/bson/types/ObjectId;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/OsList;->B(JLorg/bson/types/ObjectId;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lio/realm/e;->d:I

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
    check-cast p2, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/OsList;->K(JZ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :goto_0
    int-to-long v2, p1

    .line 21
    check-cast p2, Lorg/bson/types/ObjectId;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, p2}, Lio/realm/internal/OsList;->R(JLorg/bson/types/ObjectId;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
