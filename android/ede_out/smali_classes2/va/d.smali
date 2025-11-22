.class public final Lva/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/c;

.field public static final b:Llb/c;

.field public static final c:Llb/c;

.field public static final d:Llb/c;

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lva/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Llb/c;",
            "Lva/n;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/LinkedHashMap;

.field public static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Llb/c;

    .line 2
    .line 3
    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lva/d;->a:Llb/c;

    .line 9
    .line 10
    new-instance v0, Llb/c;

    .line 11
    .line 12
    const-string v1, "javax.annotation.meta.TypeQualifier"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lva/d;->b:Llb/c;

    .line 18
    .line 19
    new-instance v0, Llb/c;

    .line 20
    .line 21
    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lva/d;->c:Llb/c;

    .line 27
    .line 28
    new-instance v0, Llb/c;

    .line 29
    .line 30
    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lva/d;->d:Llb/c;

    .line 36
    .line 37
    const/4 v0, 0x5

    .line 38
    new-array v0, v0, [Lva/c;

    .line 39
    .line 40
    sget-object v1, Lva/c;->d:Lva/c;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lva/c;->b:Lva/c;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    aput-object v1, v0, v3

    .line 49
    .line 50
    sget-object v1, Lva/c;->c:Lva/c;

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    aput-object v1, v0, v4

    .line 54
    .line 55
    sget-object v5, Lva/c;->f:Lva/c;

    .line 56
    .line 57
    const/4 v6, 0x3

    .line 58
    aput-object v5, v0, v6

    .line 59
    .line 60
    sget-object v5, Lva/c;->e:Lva/c;

    .line 61
    .line 62
    const/4 v6, 0x4

    .line 63
    aput-object v5, v0, v6

    .line 64
    .line 65
    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lva/d;->e:Ljava/util/List;

    .line 70
    .line 71
    sget-object v5, Lva/y;->c:Llb/c;

    .line 72
    .line 73
    new-instance v6, Lva/n;

    .line 74
    .line 75
    new-instance v7, Ldb/l;

    .line 76
    .line 77
    sget-object v8, Ldb/k;->c:Ldb/k;

    .line 78
    .line 79
    invoke-direct {v7, v8, v2}, Ldb/l;-><init>(Ldb/k;Z)V

    .line 80
    .line 81
    .line 82
    check-cast v0, Ljava/util/Collection;

    .line 83
    .line 84
    invoke-direct {v6, v7, v0, v2}, Lva/n;-><init>(Ldb/l;Ljava/util/Collection;Z)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Ll9/g;

    .line 88
    .line 89
    invoke-direct {v0, v5, v6}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lb8/f;->W(Ll9/g;)Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lva/d;->f:Ljava/util/Map;

    .line 97
    .line 98
    new-array v5, v4, [Ll9/g;

    .line 99
    .line 100
    new-instance v6, Llb/c;

    .line 101
    .line 102
    const-string v7, "javax.annotation.ParametersAreNullableByDefault"

    .line 103
    .line 104
    invoke-direct {v6, v7}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v7, Lva/n;

    .line 108
    .line 109
    new-instance v9, Ldb/l;

    .line 110
    .line 111
    sget-object v10, Ldb/k;->b:Ldb/k;

    .line 112
    .line 113
    invoke-direct {v9, v10, v2}, Ldb/l;-><init>(Ldb/k;Z)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Ljava/util/Collection;

    .line 121
    .line 122
    invoke-direct {v7, v9, v10}, Lva/n;-><init>(Ldb/l;Ljava/util/Collection;)V

    .line 123
    .line 124
    .line 125
    new-instance v9, Ll9/g;

    .line 126
    .line 127
    invoke-direct {v9, v6, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    aput-object v9, v5, v2

    .line 131
    .line 132
    new-instance v6, Llb/c;

    .line 133
    .line 134
    const-string v7, "javax.annotation.ParametersAreNonnullByDefault"

    .line 135
    .line 136
    invoke-direct {v6, v7}, Llb/c;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v7, Lva/n;

    .line 140
    .line 141
    new-instance v9, Ldb/l;

    .line 142
    .line 143
    invoke-direct {v9, v8, v2}, Ldb/l;-><init>(Ldb/k;Z)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Ljava/util/Collection;

    .line 151
    .line 152
    invoke-direct {v7, v9, v1}, Lva/n;-><init>(Ldb/l;Ljava/util/Collection;)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Ll9/g;

    .line 156
    .line 157
    invoke-direct {v1, v6, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    aput-object v1, v5, v3

    .line 161
    .line 162
    invoke-static {v5}, Lm9/e0;->R0([Ll9/g;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 167
    .line 168
    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    sput-object v5, Lva/d;->g:Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    new-array v0, v4, [Llb/c;

    .line 177
    .line 178
    sget-object v1, Lva/y;->e:Llb/c;

    .line 179
    .line 180
    aput-object v1, v0, v2

    .line 181
    .line 182
    sget-object v1, Lva/y;->f:Llb/c;

    .line 183
    .line 184
    aput-object v1, v0, v3

    .line 185
    .line 186
    invoke-static {v0}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sput-object v0, Lva/d;->h:Ljava/util/Set;

    .line 191
    .line 192
    return-void
.end method
