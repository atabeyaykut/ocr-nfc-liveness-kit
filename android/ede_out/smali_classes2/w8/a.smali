.class public final Lw8/a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "id.zelory.compressor.Compressor$compress$3"
    f = "Compressor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Lnc/a0;

.field public final synthetic b:Lx9/l;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public constructor <init>(Lx9/l;Landroid/content/Context;Ljava/io/File;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lw8/a;->b:Lx9/l;

    iput-object p2, p0, Lw8/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lw8/a;->d:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw8/a;

    iget-object v1, p0, Lw8/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lw8/a;->d:Ljava/io/File;

    iget-object v3, p0, Lw8/a;->b:Lx9/l;

    invoke-direct {v0, v3, v1, v2, p2}, Lw8/a;-><init>(Lx9/l;Landroid/content/Context;Ljava/io/File;Lp9/d;)V

    check-cast p1, Lnc/a0;

    iput-object p1, v0, Lw8/a;->a:Lnc/a0;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lw8/a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lw8/a;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lw8/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lx8/a;

    .line 5
    .line 6
    invoke-direct {p1}, Lx8/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lw8/a;->b:Lx9/l;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lw8/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, Lw8/a;->c:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "context"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lw8/a;->d:Ljava/io/File;

    .line 24
    .line 25
    const-string v2, "imageFile"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v5, "context.cacheDir"

    .line 47
    .line 48
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    sget-object v0, Lw8/c;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, "compressor"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Lv9/a;

    .line 112
    .line 113
    const-string v0, "Tried to overwrite the destination, but failed to delete it."

    .line 114
    .line 115
    invoke-direct {p1, v1, v2, v0}, Lv9/a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    new-instance p1, Lv9/b;

    .line 133
    .line 134
    const-string v0, "Failed to create target directory."

    .line 135
    .line 136
    invoke-direct {p1, v1, v2, v0}, Lv9/b;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 147
    .line 148
    .line 149
    :cond_4
    new-instance v0, Ljava/io/FileInputStream;

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    .line 153
    .line 154
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 155
    .line 156
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 157
    .line 158
    .line 159
    const/16 v3, 0x2000

    .line 160
    .line 161
    :try_start_1
    invoke-static {v0, v1, v3}, Lb8/f;->s(Ljava/io/InputStream;Ljava/io/FileOutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    :try_start_2
    invoke-static {v1, v3}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v3}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    iget-object p1, p1, Lx8/a;->a:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lx8/b;

    .line 188
    .line 189
    :goto_2
    invoke-interface {v0, v2}, Lx8/b;->b(Ljava/io/File;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_5

    .line 194
    .line 195
    invoke-interface {v0, v2}, Lx8/b;->a(Ljava/io/File;)Ljava/io/File;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    goto :goto_2

    .line 200
    :cond_6
    return-object v2

    .line 201
    :catchall_0
    move-exception p1

    .line 202
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :catchall_1
    move-exception v2

    .line 204
    :try_start_4
    invoke-static {v1, p1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 208
    :catchall_2
    move-exception p1

    .line 209
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 210
    :catchall_3
    move-exception v1

    .line 211
    invoke-static {v0, p1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    throw v1

    .line 215
    :cond_7
    new-instance p1, Lv9/e;

    .line 216
    .line 217
    invoke-direct {p1, v1}, Lv9/e;-><init>(Ljava/io/File;)V

    .line 218
    .line 219
    .line 220
    throw p1
.end method
