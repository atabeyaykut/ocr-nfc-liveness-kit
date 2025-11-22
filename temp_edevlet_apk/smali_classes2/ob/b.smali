.class public final Lob/b;
.super Lc6/a;
.source "SourceFile"


# direct methods
.method public static final t(Lac/d;Ljava/util/LinkedHashSet;Lvb/i;Z)V
    .locals 4

    .line 1
    sget-object v0, Lvb/d;->o:Lvb/d;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {p2, v0, v1}, Lvb/l$a;->a(Lvb/l;Lvb/d;I)Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lma/j;

    .line 23
    .line 24
    instance-of v2, v1, Lma/e;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Lma/e;

    .line 29
    .line 30
    invoke-interface {v1}, Lma/z;->G()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-interface {v1}, Lma/j;->getName()Llb/f;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "descriptor.name"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Lua/c;->d:Lua/c;

    .line 46
    .line 47
    invoke-interface {p2, v1, v2}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    instance-of v2, v1, Lma/e;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    check-cast v1, Lma/e;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    instance-of v2, v1, Lma/v0;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    check-cast v1, Lma/v0;

    .line 63
    .line 64
    invoke-interface {v1}, Lma/v0;->p()Lma/e;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    sget v2, Lob/i;->a:I

    .line 74
    .line 75
    invoke-interface {v1}, Lma/g;->i()Lcc/c1;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Lcc/c1;->l()Ljava/util/Collection;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcc/e0;

    .line 98
    .line 99
    invoke-static {v3, p0}, Lob/i;->p(Lcc/e0;Lma/e;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/4 v2, 0x0

    .line 108
    :goto_2
    if-eqz v2, :cond_7

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_7
    if-eqz p3, :cond_0

    .line 114
    .line 115
    invoke-interface {v1}, Lma/e;->x0()Lvb/i;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v2, "refinedDescriptor.unsubstitutedInnerClassesScope"

    .line 120
    .line 121
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p1, v1, p3}, Lob/b;->t(Lac/d;Ljava/util/LinkedHashSet;Lvb/i;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    return-void
.end method
