.class public final Lm0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm0/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lm0/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm0/e;Lm0/b;)V
    .locals 0
    .param p1    # Lm0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lm0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/f;->a:Lm0/e;

    iput-object p2, p0, Lm0/f;->b:Lm0/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ld0/r;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld0/r<",
            "Ld0/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p3, "application/json"

    .line 4
    .line 5
    :cond_0
    const-string v0, "application/zip"

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lm0/f;->a:Lm0/e;

    .line 13
    .line 14
    if-nez p3, :cond_3

    .line 15
    .line 16
    const-string p3, "\\?"

    .line 17
    .line 18
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    const/4 v2, 0x0

    .line 23
    aget-object p3, p3, v2

    .line 24
    .line 25
    const-string v2, ".lottie"

    .line 26
    .line 27
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lp0/c;->a()V

    .line 35
    .line 36
    .line 37
    sget-object p3, Lm0/c;->b:Lm0/c;

    .line 38
    .line 39
    if-nez p4, :cond_2

    .line 40
    .line 41
    invoke-static {p2, v0}, Ld0/g;->c(Ljava/io/InputStream;Ljava/lang/String;)Ld0/r;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v1, p1, p2, p3}, Lm0/e;->c(Ljava/lang/String;Ljava/io/InputStream;Lm0/c;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v0, Ljava/io/FileInputStream;

    .line 51
    .line 52
    new-instance v2, Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1}, Ld0/g;->c(Ljava/io/InputStream;Ljava/lang/String;)Ld0/r;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    invoke-static {}, Lp0/c;->a()V

    .line 70
    .line 71
    .line 72
    sget-object p3, Lm0/c;->c:Lm0/c;

    .line 73
    .line 74
    if-nez p4, :cond_4

    .line 75
    .line 76
    new-instance v2, Ljava/util/zip/ZipInputStream;

    .line 77
    .line 78
    invoke-direct {v2, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v0}, Ld0/g;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ld0/r;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lm0/e;->c(Ljava/lang/String;Ljava/io/InputStream;Lm0/c;)Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 91
    .line 92
    new-instance v2, Ljava/io/FileInputStream;

    .line 93
    .line 94
    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, p1}, Ld0/g;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ld0/r;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    :goto_1
    if-eqz p4, :cond_5

    .line 105
    .line 106
    iget-object p4, p2, Ld0/r;->a:Ljava/lang/Object;

    .line 107
    .line 108
    if-eqz p4, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const/4 p4, 0x1

    .line 114
    invoke-static {p1, p3, p4}, Lm0/e;->a(Ljava/lang/String;Lm0/c;Z)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance p3, Ljava/io/File;

    .line 119
    .line 120
    invoke-virtual {v1}, Lm0/e;->b()Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p4, ".temp"

    .line 132
    .line 133
    const-string v0, ""

    .line 134
    .line 135
    invoke-virtual {p1, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p4, Ljava/io/File;

    .line 140
    .line 141
    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lp0/c;->a()V

    .line 152
    .line 153
    .line 154
    if-nez p1, :cond_5

    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v0, "Unable to rename cache file "

    .line 159
    .line 160
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p3, " to "

    .line 171
    .line 172
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p3, "."

    .line 183
    .line 184
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Lp0/c;->b(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    return-object p2
.end method
