.class public final Lio/realm/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/realm/a;Lio/realm/s0;Ljava/lang/String;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lio/realm/internal/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lio/realm/internal/n;

    .line 8
    .line 9
    instance-of v2, v0, Lio/realm/p;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_4

    .line 13
    .line 14
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lio/realm/f0;->e:Lio/realm/a;

    .line 19
    .line 20
    if-ne v2, p0, :cond_2

    .line 21
    .line 22
    check-cast p1, Lio/realm/p;

    .line 23
    .line 24
    iget-object p0, p1, Lio/realm/p;->a:Lio/realm/f0;

    .line 25
    .line 26
    iget-object p1, p0, Lio/realm/f0;->e:Lio/realm/a;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/realm/a;->b()V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 32
    .line 33
    invoke-interface {p0}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-class p1, Lio/realm/h0;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v4, "list"

    .line 68
    .line 69
    aput-object v4, v2, v3

    .line 70
    .line 71
    aput-object v4, v2, v1

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    aput-object p2, v2, v1

    .line 75
    .line 76
    const/4 p2, 0x3

    .line 77
    aput-object p0, v2, p2

    .line 78
    .line 79
    const-string p0, "The object has a different type from %s\'s. Type of the %s is \'%s\', type of object is \'%s\'."

    .line 80
    .line 81
    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_1
    :goto_0
    return v3

    .line 90
    :cond_2
    iget-wide p0, p0, Lio/realm/a;->b:J

    .line 91
    .line 92
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget-object p2, p2, Lio/realm/f0;->e:Lio/realm/a;

    .line 97
    .line 98
    iget-wide v0, p2, Lio/realm/a;->b:J

    .line 99
    .line 100
    cmp-long p2, p0, v0

    .line 101
    .line 102
    if-nez p2, :cond_3

    .line 103
    .line 104
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p1, "Cannot pass DynamicRealmObject between Realm instances."

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string p1, "Cannot pass an object to a Realm instance created in another thread."

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_4
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Lio/realm/f0;->e:Lio/realm/a;

    .line 133
    .line 134
    iget-object p1, p1, Lio/realm/a;->c:Lio/realm/o0;

    .line 135
    .line 136
    iget-object p1, p1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 137
    .line 138
    iget-object p2, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 139
    .line 140
    iget-object p2, p2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_6

    .line 147
    .line 148
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p1, p1, Lio/realm/f0;->e:Lio/realm/a;

    .line 153
    .line 154
    if-ne p0, p1, :cond_5

    .line 155
    .line 156
    return v3

    .line 157
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    const-string p1, "Cannot pass an object from another Realm instance."

    .line 160
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_6
    return v1
.end method

.method public static b(Lio/realm/a;Lio/realm/s0;)Lio/realm/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/s0;",
            ">(",
            "Lio/realm/a;",
            "TE;)TE;"
        }
    .end annotation

    .line 1
    check-cast p0, Lio/realm/g0;

    .line 2
    .line 3
    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 4
    .line 5
    iget-object v0, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/realm/internal/o;->i(Ljava/lang/Class;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lio/realm/internal/OsObjectStore;->b(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-array v0, v1, [Lio/realm/v;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lio/realm/g0;->p(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-array v0, v1, [Lio/realm/v;

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lio/realm/g0;->o(Lio/realm/s0;[Lio/realm/v;)Lio/realm/s0;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static c(Lio/realm/a;Lio/realm/h0;)Lio/realm/h0;
    .locals 4

    .line 1
    iget-object v0, p1, Lio/realm/h0;->a:Lio/realm/k0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/realm/k0;->b:Lio/realm/h0$a;

    .line 4
    .line 5
    sget-object v2, Lio/realm/h0$a;->m:Lio/realm/h0$a;

    .line 6
    .line 7
    if-ne v1, v2, :cond_7

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/realm/k0;->c()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p1, Lio/realm/h0;->a:Lio/realm/k0;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lio/realm/k0;->d(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lio/realm/s0;

    .line 20
    .line 21
    instance-of v2, v1, Lio/realm/internal/n;

    .line 22
    .line 23
    if-eqz v2, :cond_5

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Lio/realm/internal/n;

    .line 27
    .line 28
    instance-of v3, v2, Lio/realm/p;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 37
    .line 38
    if-ne v0, p0, :cond_0

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    iget-wide p0, p0, Lio/realm/a;->b:J

    .line 42
    .line 43
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 48
    .line 49
    iget-wide v0, v0, Lio/realm/a;->b:J

    .line 50
    .line 51
    cmp-long v2, p0, v0

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p1, "Cannot copy DynamicRealmObject between Realm instances."

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p1, "Cannot copy an object to a Realm instance created in another thread."

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v0}, Lio/realm/z0;->b(Ljava/lang/Class;)Lio/realm/x0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 80
    .line 81
    invoke-virtual {v0}, Lio/realm/internal/Table;->p()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 100
    .line 101
    iget-object v0, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 102
    .line 103
    iget-object v0, v0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v3, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 106
    .line 107
    iget-object v3, v3, Lio/realm/o0;->c:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v0, v0, Lio/realm/f0;->e:Lio/realm/a;

    .line 120
    .line 121
    if-ne p0, v0, :cond_3

    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    const-string p1, "Cannot copy an object from another Realm instance."

    .line 127
    .line 128
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string p1, "Embedded objects are not supported by RealmAny."

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_5
    invoke-static {p0, v1}, Lio/realm/g;->b(Lio/realm/a;Lio/realm/s0;)Lio/realm/s0;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    new-instance p1, Lio/realm/h0;

    .line 145
    .line 146
    if-nez p0, :cond_6

    .line 147
    .line 148
    new-instance p0, Lio/realm/z;

    .line 149
    .line 150
    invoke-direct {p0}, Lio/realm/z;-><init>()V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_6
    new-instance v0, Lio/realm/u0;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Lio/realm/u0;-><init>(Lio/realm/s0;)V

    .line 157
    .line 158
    .line 159
    move-object p0, v0

    .line 160
    :goto_0
    invoke-direct {p1, p0}, Lio/realm/h0;-><init>(Lio/realm/k0;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    return-object p1
.end method

.method public static d(Lio/realm/a;Lio/realm/s0;)Z
    .locals 5

    .line 1
    instance-of v0, p0, Lio/realm/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lio/realm/z0;->b(Ljava/lang/Class;)Lio/realm/x0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/realm/internal/Table;->p()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    check-cast p1, Lio/realm/p;

    .line 25
    .line 26
    iget-object p1, p1, Lio/realm/p;->a:Lio/realm/f0;

    .line 27
    .line 28
    iget-object v0, p1, Lio/realm/f0;->e:Lio/realm/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 34
    .line 35
    invoke-interface {p1}, Lio/realm/internal/p;->q()Lio/realm/internal/Table;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lio/realm/a;->i()Lio/realm/z0;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lio/realm/internal/Table;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lio/realm/z0;->d:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lio/realm/x0;

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v3, v2, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 65
    .line 66
    invoke-virtual {v3}, Lio/realm/internal/Table;->q()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    :cond_1
    iget-object p0, p0, Lio/realm/z0;->f:Lio/realm/a;

    .line 83
    .line 84
    iget-object v2, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    new-instance v2, Lio/realm/t;

    .line 93
    .line 94
    iget-object p1, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v2, p0, p1}, Lio/realm/t;-><init>(Lio/realm/a;Lio/realm/internal/Table;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object p0, v2, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 107
    .line 108
    invoke-virtual {p0}, Lio/realm/internal/Table;->p()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    const-string v0, "The class "

    .line 116
    .line 117
    const-string v1, " doesn\'t exist in this Realm."

    .line 118
    .line 119
    invoke-static {v0, p1, v1}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public static e(Lio/realm/g0;Lio/realm/s0;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/o0;->i:Lio/realm/internal/o;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, v2}, Lio/realm/g0;->v(Ljava/lang/Class;)Lio/realm/internal/Table;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p2, p3}, Lio/realm/internal/Table;->o(J)Lio/realm/internal/UncheckedRow;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object p2, p0, Lio/realm/g0;->j:Lio/realm/u;

    .line 22
    .line 23
    invoke-virtual {p2, v2}, Lio/realm/z0;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x1

    .line 28
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    move-object v3, p0

    .line 32
    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/o;->n(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/p;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/s0;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v5, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 42
    .line 43
    move-object v2, p0

    .line 44
    move-object v3, p1

    .line 45
    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/o;->p(Lio/realm/g0;Lio/realm/s0;Lio/realm/s0;Ljava/util/HashMap;Ljava/util/Set;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
