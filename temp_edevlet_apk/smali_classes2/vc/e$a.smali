.class public final Lvc/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public volatile a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Lrc/e;

.field public final synthetic c:Lvc/e;


# direct methods
.method public constructor <init>(Lvc/e;Lrc/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrc/e;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lvc/e$a;->c:Lvc/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lvc/e$a;->b:Lrc/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lvc/e$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "canceled due to "

    .line 2
    .line 3
    const-string v1, "Callback failure for "

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "OkHttp "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lvc/e$a;->c:Lvc/e;

    .line 13
    .line 14
    iget-object v3, v3, Lvc/e;->s:Lrc/x;

    .line 15
    .line 16
    iget-object v3, v3, Lrc/x;->b:Lrc/r;

    .line 17
    .line 18
    invoke-virtual {v3}, Lrc/r;->f()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "currentThread"

    .line 34
    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v2, p0, Lvc/e$a;->c:Lvc/e;

    .line 46
    .line 47
    iget-object v2, v2, Lvc/e;->c:Lvc/e$c;

    .line 48
    .line 49
    invoke-virtual {v2}, Led/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    :try_start_1
    iget-object v5, p0, Lvc/e$a;->c:Lvc/e;

    .line 54
    .line 55
    invoke-virtual {v5}, Lvc/e;->f()Lrc/b0;

    .line 56
    .line 57
    .line 58
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    const/4 v5, 0x1

    .line 60
    :try_start_2
    iget-object v6, p0, Lvc/e$a;->b:Lrc/e;

    .line 61
    .line 62
    invoke-interface {v6, v2}, Lrc/e;->b(Lrc/b0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_3
    iget-object v0, p0, Lvc/e$a;->c:Lvc/e;

    .line 66
    .line 67
    iget-object v0, v0, Lvc/e;->r:Lrc/v;

    .line 68
    .line 69
    :goto_0
    iget-object v0, v0, Lrc/v;->a:Lrc/l;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v2, 0x1

    .line 77
    goto :goto_3

    .line 78
    :catchall_1
    move-exception v1

    .line 79
    :goto_1
    :try_start_4
    iget-object v5, p0, Lvc/e$a;->c:Lvc/e;

    .line 80
    .line 81
    invoke-virtual {v5}, Lvc/e;->cancel()V

    .line 82
    .line 83
    .line 84
    if-nez v2, :cond_0

    .line 85
    .line 86
    new-instance v2, Ljava/io/IOException;

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v1}, Lb8/f;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lvc/e$a;->b:Lrc/e;

    .line 107
    .line 108
    iget-object v5, p0, Lvc/e$a;->c:Lvc/e;

    .line 109
    .line 110
    invoke-interface {v0, v5, v2}, Lrc/e;->a(Lvc/e;Ljava/io/IOException;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    goto :goto_6

    .line 116
    :cond_0
    :goto_2
    throw v1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    :goto_3
    if-eqz v2, :cond_1

    .line 119
    .line 120
    sget-object v2, Lzc/h;->c:Lzc/h$a;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    sget-object v2, Lzc/h;->a:Lzc/h;

    .line 126
    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lvc/e$a;->c:Lvc/e;

    .line 133
    .line 134
    invoke-static {v1}, Lvc/e;->b(Lvc/e;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    const/4 v2, 0x4

    .line 149
    invoke-static {v2, v1, v0}, Lzc/h;->i(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_1
    iget-object v1, p0, Lvc/e$a;->b:Lrc/e;

    .line 154
    .line 155
    iget-object v2, p0, Lvc/e$a;->c:Lvc/e;

    .line 156
    .line 157
    invoke-interface {v1, v2, v0}, Lrc/e;->a(Lvc/e;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 158
    .line 159
    .line 160
    :goto_4
    :try_start_5
    iget-object v0, p0, Lvc/e$a;->c:Lvc/e;

    .line 161
    .line 162
    iget-object v0, v0, Lvc/e;->r:Lrc/v;

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :goto_5
    invoke-virtual {v0, p0}, Lrc/l;->c(Lvc/e$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :goto_6
    :try_start_6
    iget-object v1, p0, Lvc/e$a;->c:Lvc/e;

    .line 173
    .line 174
    iget-object v1, v1, Lvc/e;->r:Lrc/v;

    .line 175
    .line 176
    iget-object v1, v1, Lrc/v;->a:Lrc/l;

    .line 177
    .line 178
    invoke-virtual {v1, p0}, Lrc/l;->c(Lvc/e$a;)V

    .line 179
    .line 180
    .line 181
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 182
    :catchall_3
    move-exception v0

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0
.end method
