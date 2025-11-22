.class public final Lfa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lga/g0;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lda/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-static {p0}, Lfa/b;->a(Lda/m;)Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    :goto_0
    if-eqz v0, :cond_6

    .line 19
    .line 20
    invoke-virtual {p0}, Lga/g0;->u()Lga/g0$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lfa/b;->b(Lda/g;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    :goto_1
    if-eqz v0, :cond_6

    .line 37
    .line 38
    check-cast p0, Lda/h;

    .line 39
    .line 40
    invoke-interface {p0}, Lda/h;->f()Lda/h$a;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lfa/b;->b(Lda/g;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 p0, 0x1

    .line 56
    :goto_2
    if-eqz p0, :cond_6

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_3
    invoke-static {p0}, Lfa/b;->a(Lda/m;)Ljava/lang/reflect/Field;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/4 v0, 0x1

    .line 71
    :goto_3
    if-eqz v0, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0}, Lga/g0;->u()Lga/g0$a;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lfa/b;->b(Lda/g;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    goto :goto_4

    .line 88
    :cond_5
    const/4 p0, 0x1

    .line 89
    :goto_4
    if-eqz p0, :cond_6

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_6
    const/4 v1, 0x0

    .line 93
    :goto_5
    return v1
.end method
