.class public final Lo/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lrc/q;Lrc/q;)Lrc/q;
    .locals 11

    .line 1
    new-instance v0, Lrc/q$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lrc/q$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lrc/q;->a:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    const-string v4, "Content-Type"

    .line 14
    .line 15
    const-string v5, "Content-Encoding"

    .line 16
    .line 17
    const-string v6, "Content-Length"

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    if-ge v3, v1, :cond_5

    .line 21
    .line 22
    add-int/lit8 v8, v3, 0x1

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lrc/q;->o(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    invoke-virtual {p0, v3}, Lrc/q;->w(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v10, "Warning"

    .line 33
    .line 34
    invoke-static {v10, v9}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    if-eqz v10, :cond_0

    .line 39
    .line 40
    const-string v10, "1"

    .line 41
    .line 42
    invoke-static {v3, v10, v2}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-eqz v10, :cond_0

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    invoke-static {v6, v9}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    invoke-static {v5, v9}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    invoke-static {v4, v9}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v7, 0x0

    .line 69
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 70
    .line 71
    invoke-static {v9}, Lo/d$a;->b(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v9}, Lrc/q;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    :cond_3
    invoke-virtual {v0, v9, v3}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_2
    move v3, v8

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-object p0, p1, Lrc/q;->a:[Ljava/lang/String;

    .line 89
    .line 90
    array-length p0, p0

    .line 91
    div-int/lit8 p0, p0, 0x2

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    :goto_3
    if-ge v1, p0, :cond_9

    .line 95
    .line 96
    add-int/lit8 v3, v1, 0x1

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lrc/q;->o(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v6, v8}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-nez v9, :cond_7

    .line 107
    .line 108
    invoke-static {v5, v8}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-nez v9, :cond_7

    .line 113
    .line 114
    invoke-static {v4, v8}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_6

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    const/4 v9, 0x0

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    :goto_4
    const/4 v9, 0x1

    .line 124
    :goto_5
    if-nez v9, :cond_8

    .line 125
    .line 126
    invoke-static {v8}, Lo/d$a;->b(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_8

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lrc/q;->w(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v8, v1}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_8
    move v1, v3

    .line 140
    goto :goto_3

    .line 141
    :cond_9
    invoke-virtual {v0}, Lrc/q$a;->c()Lrc/q;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-static {v0, p0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
