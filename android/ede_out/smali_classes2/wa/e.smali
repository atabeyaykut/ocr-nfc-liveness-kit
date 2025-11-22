.class public final Lwa/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lna/n;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lna/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Ll9/g;

    .line 4
    .line 5
    const-class v1, Lna/n;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ll9/g;

    .line 12
    .line 13
    const-string v3, "PACKAGE"

    .line 14
    .line 15
    invoke-direct {v2, v3, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    sget-object v2, Lna/n;->r:Lna/n;

    .line 22
    .line 23
    sget-object v3, Lna/n;->E:Lna/n;

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Ll9/g;

    .line 30
    .line 31
    const-string v4, "TYPE"

    .line 32
    .line 33
    invoke-direct {v3, v4, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    aput-object v3, v0, v2

    .line 38
    .line 39
    sget-object v3, Lna/n;->s:Lna/n;

    .line 40
    .line 41
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Ll9/g;

    .line 46
    .line 47
    const-string v5, "ANNOTATION_TYPE"

    .line 48
    .line 49
    invoke-direct {v4, v5, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    aput-object v4, v0, v3

    .line 54
    .line 55
    sget-object v4, Lna/n;->t:Lna/n;

    .line 56
    .line 57
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Ll9/g;

    .line 62
    .line 63
    const-string v6, "TYPE_PARAMETER"

    .line 64
    .line 65
    invoke-direct {v5, v6, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    aput-object v5, v0, v4

    .line 70
    .line 71
    sget-object v5, Lna/n;->w:Lna/n;

    .line 72
    .line 73
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-instance v6, Ll9/g;

    .line 78
    .line 79
    const-string v7, "FIELD"

    .line 80
    .line 81
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x4

    .line 85
    aput-object v6, v0, v5

    .line 86
    .line 87
    sget-object v5, Lna/n;->x:Lna/n;

    .line 88
    .line 89
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    new-instance v6, Ll9/g;

    .line 94
    .line 95
    const-string v7, "LOCAL_VARIABLE"

    .line 96
    .line 97
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const/4 v5, 0x5

    .line 101
    aput-object v6, v0, v5

    .line 102
    .line 103
    sget-object v5, Lna/n;->y:Lna/n;

    .line 104
    .line 105
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    new-instance v6, Ll9/g;

    .line 110
    .line 111
    const-string v7, "PARAMETER"

    .line 112
    .line 113
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 v5, 0x6

    .line 117
    aput-object v6, v0, v5

    .line 118
    .line 119
    sget-object v5, Lna/n;->z:Lna/n;

    .line 120
    .line 121
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    new-instance v6, Ll9/g;

    .line 126
    .line 127
    const-string v7, "CONSTRUCTOR"

    .line 128
    .line 129
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const/4 v5, 0x7

    .line 133
    aput-object v6, v0, v5

    .line 134
    .line 135
    sget-object v5, Lna/n;->A:Lna/n;

    .line 136
    .line 137
    sget-object v6, Lna/n;->B:Lna/n;

    .line 138
    .line 139
    sget-object v7, Lna/n;->C:Lna/n;

    .line 140
    .line 141
    invoke-static {v5, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    new-instance v6, Ll9/g;

    .line 146
    .line 147
    const-string v7, "METHOD"

    .line 148
    .line 149
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const/16 v5, 0x8

    .line 153
    .line 154
    aput-object v6, v0, v5

    .line 155
    .line 156
    sget-object v5, Lna/n;->D:Lna/n;

    .line 157
    .line 158
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-instance v6, Ll9/g;

    .line 163
    .line 164
    const-string v7, "TYPE_USE"

    .line 165
    .line 166
    invoke-direct {v6, v7, v5}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    const/16 v5, 0x9

    .line 170
    .line 171
    aput-object v6, v0, v5

    .line 172
    .line 173
    invoke-static {v0}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sput-object v0, Lwa/e;->a:Ljava/util/Map;

    .line 178
    .line 179
    new-array v0, v4, [Ll9/g;

    .line 180
    .line 181
    sget-object v4, Lna/m;->a:Lna/m;

    .line 182
    .line 183
    new-instance v5, Ll9/g;

    .line 184
    .line 185
    const-string v6, "RUNTIME"

    .line 186
    .line 187
    invoke-direct {v5, v6, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    aput-object v5, v0, v1

    .line 191
    .line 192
    sget-object v1, Lna/m;->b:Lna/m;

    .line 193
    .line 194
    new-instance v4, Ll9/g;

    .line 195
    .line 196
    const-string v5, "CLASS"

    .line 197
    .line 198
    invoke-direct {v4, v5, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    aput-object v4, v0, v2

    .line 202
    .line 203
    sget-object v1, Lna/m;->c:Lna/m;

    .line 204
    .line 205
    new-instance v2, Ll9/g;

    .line 206
    .line 207
    const-string v4, "SOURCE"

    .line 208
    .line 209
    invoke-direct {v2, v4, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    aput-object v2, v0, v3

    .line 213
    .line 214
    invoke-static {v0}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sput-object v0, Lwa/e;->b:Ljava/util/Map;

    .line 219
    .line 220
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
