.class public final Lvc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/s;


# static fields
.field public static final a:Lvc/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvc/a;

    invoke-direct {v0}, Lvc/a;-><init>()V

    sput-object v0, Lvc/a;->a:Lvc/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lwc/f;)Lrc/b0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lwc/f;->b:Lvc/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, v0, Lvc/e;->m:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean v1, v0, Lvc/e;->l:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    xor-int/2addr v1, v2

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, v0, Lvc/e;->k:Z

    .line 18
    .line 19
    xor-int/2addr v1, v2

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    iget-object v1, v0, Lvc/e;->f:Lvc/d;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v9, v0, Lvc/e;->r:Lrc/v;

    .line 31
    .line 32
    const-string v3, "client"

    .line 33
    .line 34
    invoke-static {v9, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget v4, p1, Lwc/f;->g:I

    .line 38
    .line 39
    iget v5, p1, Lwc/f;->h:I

    .line 40
    .line 41
    iget v6, p1, Lwc/f;->i:I

    .line 42
    .line 43
    iget-boolean v7, v9, Lrc/v;->f:Z

    .line 44
    .line 45
    iget-object v3, p1, Lwc/f;->f:Lrc/x;

    .line 46
    .line 47
    iget-object v3, v3, Lrc/x;->c:Ljava/lang/String;

    .line 48
    .line 49
    const-string v8, "GET"

    .line 50
    .line 51
    invoke-static {v3, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    xor-int/lit8 v8, v3, 0x1

    .line 56
    .line 57
    move-object v3, v1

    .line 58
    invoke-virtual/range {v3 .. v8}, Lvc/d;->a(IIIZZ)Lvc/i;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, v9, p1}, Lvc/i;->k(Lrc/v;Lwc/f;)Lwc/d;

    .line 63
    .line 64
    .line 65
    move-result-object v3
    :try_end_1
    .catch Lvc/l; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    new-instance v4, Lvc/c;

    .line 67
    .line 68
    iget-object v5, v0, Lvc/e;->b:Lrc/n;

    .line 69
    .line 70
    invoke-direct {v4, v0, v5, v1, v3}, Lvc/c;-><init>(Lvc/e;Lrc/n;Lvc/d;Lwc/d;)V

    .line 71
    .line 72
    .line 73
    iput-object v4, v0, Lvc/e;->j:Lvc/c;

    .line 74
    .line 75
    iput-object v4, v0, Lvc/e;->p:Lvc/c;

    .line 76
    .line 77
    monitor-enter v0

    .line 78
    :try_start_2
    iput-boolean v2, v0, Lvc/e;->k:Z

    .line 79
    .line 80
    iput-boolean v2, v0, Lvc/e;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    iget-boolean v0, v0, Lvc/e;->n:Z

    .line 84
    .line 85
    if-nez v0, :cond_0

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    const/16 v1, 0x3d

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-static {p1, v2, v4, v0, v1}, Lwc/f;->b(Lwc/f;ILvc/c;Lrc/x;I)Lwc/f;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object p1, p1, Lwc/f;->f:Lrc/x;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lwc/f;->c(Lrc/x;)Lrc/b0;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 103
    .line 104
    const-string v0, "Canceled"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    monitor-exit v0

    .line 112
    throw p1

    .line 113
    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {v1, p1}, Lvc/d;->c(Ljava/io/IOException;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lvc/l;

    .line 118
    .line 119
    invoke-direct {v0, p1}, Lvc/l;-><init>(Ljava/io/IOException;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :catch_1
    move-exception p1

    .line 124
    iget-object v0, p1, Lvc/l;->a:Ljava/io/IOException;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lvc/d;->c(Ljava/io/IOException;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    .line 131
    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :cond_2
    const-string p1, "Check failed."

    .line 143
    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :cond_3
    const-string p1, "released"

    .line 155
    .line 156
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    :catchall_1
    move-exception p1

    .line 167
    monitor-exit v0

    .line 168
    throw p1
.end method
