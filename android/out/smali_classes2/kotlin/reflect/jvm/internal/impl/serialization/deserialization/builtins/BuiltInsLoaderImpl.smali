.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lja/a;


# instance fields
.field public final b:Lzb/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzb/b;

    invoke-direct {v0}, Lzb/b;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->b:Lzb/b;

    return-void
.end method


# virtual methods
.method public a(Lbc/l;Lma/b0;Ljava/lang/Iterable;Loa/c;Loa/a;Z)Lma/f0;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc/l;",
            "Lma/b0;",
            "Ljava/lang/Iterable<",
            "+",
            "Loa/b;",
            ">;",
            "Loa/c;",
            "Loa/a;",
            "Z)",
            "Lma/f0;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v0, "storageManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "builtInsModule"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "classDescriptorFactories"

    .line 16
    .line 17
    move-object/from16 v8, p3

    .line 18
    .line 19
    invoke-static {v8, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "platformDependentDeclarationFilter"

    .line 23
    .line 24
    move-object/from16 v11, p4

    .line 25
    .line 26
    invoke-static {v11, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "additionalClassPartsProvider"

    .line 30
    .line 31
    move-object/from16 v10, p5

    .line 32
    .line 33
    invoke-static {v10, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lja/o;->o:Ljava/util/Set;

    .line 37
    .line 38
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$a;

    .line 39
    .line 40
    move-object/from16 v15, p0

    .line 41
    .line 42
    iget-object v4, v15, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl;->b:Lzb/b;

    .line 43
    .line 44
    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$a;-><init>(Lzb/b;)V

    .line 45
    .line 46
    .line 47
    const-string v4, "packageFqNames"

    .line 48
    .line 49
    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v14, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Llb/c;

    .line 76
    .line 77
    sget-object v5, Lzb/a;->m:Lzb/a;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v4}, Lzb/a;->a(Llb/c;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v3, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsLoaderImpl$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Ljava/io/InputStream;

    .line 91
    .line 92
    if-eqz v6, :cond_0

    .line 93
    .line 94
    move/from16 v7, p6

    .line 95
    .line 96
    invoke-static {v4, v1, v2, v6, v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a$a;->a(Llb/c;Lbc/l;Lma/b0;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string v1, "Resource not found in classpath: "

    .line 107
    .line 108
    invoke-static {v1, v5}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_1
    new-instance v13, Lma/g0;

    .line 117
    .line 118
    move-object v5, v13

    .line 119
    invoke-direct {v13, v14}, Lma/g0;-><init>(Ljava/util/ArrayList;)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Lma/d0;

    .line 123
    .line 124
    move-object v9, v6

    .line 125
    invoke-direct {v6, v1, v2}, Lma/d0;-><init>(Lbc/l;Lma/b0;)V

    .line 126
    .line 127
    .line 128
    new-instance v12, Lyb/l;

    .line 129
    .line 130
    move-object v0, v12

    .line 131
    new-instance v4, Lyb/q;

    .line 132
    .line 133
    move-object v3, v4

    .line 134
    invoke-direct {v4, v13}, Lyb/q;-><init>(Lma/f0;)V

    .line 135
    .line 136
    .line 137
    new-instance v7, Lyb/e;

    .line 138
    .line 139
    move-object v4, v7

    .line 140
    sget-object v8, Lzb/a;->m:Lzb/a;

    .line 141
    .line 142
    invoke-direct {v7, v2, v6, v8}, Lyb/e;-><init>(Lma/b0;Lma/d0;Lzb/a;)V

    .line 143
    .line 144
    .line 145
    sget-object v6, Lyb/u;->k0:Lyb/u$a;

    .line 146
    .line 147
    sget-object v7, Lyb/v$a;->a:Lyb/v$a;

    .line 148
    .line 149
    iget-object v8, v8, Lxb/a;->a:Lmb/f;

    .line 150
    .line 151
    move-object/from16 v17, v12

    .line 152
    .line 153
    move-object v12, v8

    .line 154
    const/4 v8, 0x0

    .line 155
    move-object/from16 v18, v13

    .line 156
    .line 157
    move-object v13, v8

    .line 158
    new-instance v8, Lub/b;

    .line 159
    .line 160
    move-object/from16 v19, v14

    .line 161
    .line 162
    move-object v14, v8

    .line 163
    invoke-direct {v8, v1}, Lub/b;-><init>(Lbc/l;)V

    .line 164
    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    move-object v15, v8

    .line 168
    const/high16 v16, 0xd0000

    .line 169
    .line 170
    move-object/from16 v1, p1

    .line 171
    .line 172
    move-object/from16 v2, p2

    .line 173
    .line 174
    move-object/from16 v8, p3

    .line 175
    .line 176
    move-object/from16 v10, p5

    .line 177
    .line 178
    move-object/from16 v11, p4

    .line 179
    .line 180
    invoke-direct/range {v0 .. v16}, Lyb/l;-><init>(Lbc/l;Lma/b0;Lyb/i;Lyb/d;Lma/f0;Lyb/u;Lyb/v;Ljava/lang/Iterable;Lma/d0;Loa/a;Loa/c;Lmb/f;Ldc/m;Lub/b;Ljava/util/List;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_2

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    .line 198
    .line 199
    move-object/from16 v2, v17

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Lyb/t;->K0(Lyb/l;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_2
    return-object v18
.end method
