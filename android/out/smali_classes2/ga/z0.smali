.class public final Lga/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/z0$a;
    }
.end annotation


# static fields
.field public static final a:Llb/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.JvmStatic"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lga/z0;->a:Llb/c;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lga/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lga/h;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lga/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lga/z0;->b(Ljava/lang/Object;)Lga/x;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lga/z0;->c(Ljava/lang/Object;)Lga/l0;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Lga/x;
    .locals 2

    instance-of v0, p0, Lga/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lga/x;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p0, Lkotlin/jvm/internal/f;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlin/jvm/internal/f;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->compute()Lda/c;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    instance-of v0, p0, Lga/x;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Lga/x;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static final c(Ljava/lang/Object;)Lga/l0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lga/l0<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lga/l0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lga/l0;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p0, Lkotlin/jvm/internal/s;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlin/jvm/internal/s;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/jvm/internal/a;->compute()Lda/c;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    instance-of v0, p0, Lga/l0;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Lga/l0;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static final d(Lna/a;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lna/a;->getAnnotations()Lna/h;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lna/c;

    .line 30
    .line 31
    invoke-interface {v1}, Lna/c;->getSource()Lma/r0;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v3, v2, Lra/b;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    check-cast v2, Lra/b;

    .line 40
    .line 41
    iget-object v1, v2, Lra/b;->b:Ljava/lang/annotation/Annotation;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    instance-of v3, v2, Lra/i$a;

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    check-cast v2, Lra/i$a;

    .line 49
    .line 50
    iget-object v1, v2, Lra/i$a;->b:Lsa/v;

    .line 51
    .line 52
    instance-of v2, v1, Lsa/e;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    check-cast v1, Lsa/e;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move-object v1, v3

    .line 61
    :goto_1
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v1, v1, Lsa/e;->a:Ljava/lang/annotation/Annotation;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object v1, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-static {v1}, Lga/z0;->i(Lna/c;)Ljava/lang/annotation/Annotation;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_2
    if-eqz v1, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    const/4 v1, 0x0

    .line 83
    const-string v2, "Container"

    .line 84
    .line 85
    if-eqz p0, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/annotation/Annotation;

    .line 103
    .line 104
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/d0;->p(Ljava/lang/annotation/Annotation;)Lda/d;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_7

    .line 121
    .line 122
    const/4 p0, 0x1

    .line 123
    goto :goto_4

    .line 124
    :cond_8
    :goto_3
    const/4 p0, 0x0

    .line 125
    :goto_4
    if-eqz p0, :cond_b

    .line 126
    .line 127
    new-instance p0, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_a

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Ljava/lang/annotation/Annotation;

    .line 147
    .line 148
    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/d0;->p(Ljava/lang/annotation/Annotation;)Lda/d;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {v5, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_9

    .line 165
    .line 166
    const-class v5, Lkotlin/jvm/internal/y;

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    if-eqz v5, :cond_9

    .line 173
    .line 174
    const-string v5, "value"

    .line 175
    .line 176
    new-array v6, v1, [Ljava/lang/Class;

    .line 177
    .line 178
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    new-array v5, v1, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v4, "null cannot be cast to non-null type kotlin.Array<out kotlin.Annotation>"

    .line 189
    .line 190
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    check-cast v3, [Ljava/lang/annotation/Annotation;

    .line 194
    .line 195
    invoke-static {v3}, Lm9/i;->g0([Ljava/lang/Object;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    goto :goto_6

    .line 200
    :cond_9
    invoke-static {v3}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    :goto_6
    check-cast v3, Ljava/lang/Iterable;

    .line 205
    .line 206
    invoke-static {v3, p0}, Lm9/p;->T0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_a
    move-object v0, p0

    .line 211
    :cond_b
    return-object v0
.end method

.method public static final e(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Parameter with void type is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown primitive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f(Ljava/lang/Class;Lmb/h$c;Lib/c;Lib/g;Lib/a;Lx9/p;)Lma/a;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p5

    .line 3
    .line 4
    const-string v2, "moduleAnchor"

    .line 5
    .line 6
    move-object v3, p0

    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "proto"

    .line 11
    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "nameResolver"

    .line 16
    .line 17
    move-object/from16 v5, p2

    .line 18
    .line 19
    invoke-static {v5, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "typeTable"

    .line 23
    .line 24
    move-object/from16 v7, p3

    .line 25
    .line 26
    invoke-static {v7, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "metadataVersion"

    .line 30
    .line 31
    move-object/from16 v9, p4

    .line 32
    .line 33
    invoke-static {v9, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "createDescriptor"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lga/s0;->a(Ljava/lang/Class;)Lra/h;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v3, v0, Lgb/h;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    move-object v3, v0

    .line 50
    check-cast v3, Lgb/h;

    .line 51
    .line 52
    iget-object v3, v3, Lgb/h;->j:Ljava/util/List;

    .line 53
    .line 54
    :goto_0
    move-object v12, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    instance-of v3, v0, Lgb/m;

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    move-object v3, v0

    .line 61
    check-cast v3, Lgb/m;

    .line 62
    .line 63
    iget-object v3, v3, Lgb/m;->j:Ljava/util/List;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    new-instance v13, Lyb/n;

    .line 67
    .line 68
    iget-object v4, v2, Lra/h;->a:Lyb/l;

    .line 69
    .line 70
    iget-object v6, v4, Lyb/l;->b:Lma/b0;

    .line 71
    .line 72
    sget-object v8, Lib/h;->b:Lib/h;

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const-string v2, "typeParameters"

    .line 77
    .line 78
    invoke-static {v12, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v3, v13

    .line 82
    move-object/from16 v5, p2

    .line 83
    .line 84
    move-object/from16 v7, p3

    .line 85
    .line 86
    move-object/from16 v9, p4

    .line 87
    .line 88
    invoke-direct/range {v3 .. v12}, Lyb/n;-><init>(Lyb/l;Lib/c;Lma/j;Lib/g;Lib/h;Lib/a;Lac/g;Lyb/k0;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lyb/z;

    .line 92
    .line 93
    invoke-direct {v2, v13}, Lyb/z;-><init>(Lyb/n;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v2, p1}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lma/a;

    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "Unsupported message: "

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1
.end method

.method public static final g(Lma/a;)Lma/o0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lma/a;->a0()Lma/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lma/k;->b()Lma/j;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lma/e;

    invoke-interface {p0}, Lma/e;->J0()Lma/o0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final h(Ljava/lang/ClassLoader;Llb/b;I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Llb/b;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lla/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Llb/b;->b()Llb/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Llb/c;->i()Llb/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "kotlinClassId.asSingleFqName().toUnsafe()"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lla/c;->g(Llb/d;)Llb/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v0

    .line 24
    :goto_0
    invoke-virtual {p1}, Llb/b;->h()Llb/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Llb/c;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Llb/b;->i()Llb/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Llb/c;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "kotlin"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_a

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    sparse-switch v1, :sswitch_data_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :sswitch_0
    const-string v1, "LongArray"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    const-class p0, [J

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :sswitch_1
    const-string v1, "FloatArray"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const-class p0, [F

    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :sswitch_2
    const-string v1, "IntArray"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const-class p0, [I

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :sswitch_3
    const-string v1, "Array"

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-class p0, [Ljava/lang/Object;

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :sswitch_4
    const-string v1, "DoubleArray"

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    const-class p0, [D

    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :sswitch_5
    const-string v1, "ByteArray"

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_6

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    const-class p0, [B

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :sswitch_6
    const-string v1, "CharArray"

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_7
    const-class p0, [C

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :sswitch_7
    const-string v1, "ShortArray"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_8
    const-class p0, [S

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :sswitch_8
    const-string v1, "BooleanArray"

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_9

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_9
    const-class p0, [Z

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_a
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const/16 v0, 0x2e

    .line 180
    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const/16 v2, 0x24

    .line 185
    .line 186
    invoke-static {p1, v0, v2}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-lez p2, :cond_b

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v1, "["

    .line 205
    .line 206
    invoke-static {v1, p2}, Lmc/j;->A(Ljava/lang/String;I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const/16 p2, 0x4c

    .line 214
    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const/16 p1, 0x3b

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    :cond_b
    invoke-static {p0, p1}, Lx5/a;->t(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    :goto_2
    return-object p0

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x35c13ccf -> :sswitch_8
        -0x2d7eb8a3 -> :sswitch_7
        -0x2d0e4b7d -> :sswitch_6
        -0x47759ef -> :sswitch_5
        0x15568e8 -> :sswitch_4
        0x3c98239 -> :sswitch_3
        0x23deebca -> :sswitch_2
        0x388e557d -> :sswitch_1
        0x7d6d891d -> :sswitch_0
    .end sparse-switch
.end method

.method public static final i(Lna/c;)Ljava/lang/annotation/Annotation;
    .locals 7

    .line 1
    invoke-static {p0}, Lsb/b;->d(Lna/c;)Lma/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lga/z0;->j(Lma/e;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    instance-of v2, v0, Ljava/lang/Class;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    if-nez v0, :cond_2

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_2
    invoke-interface {p0}, Lna/c;->a()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Llb/f;

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lqb/g;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "annotationClass.classLoader"

    .line 69
    .line 70
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v5}, Lga/z0;->k(Lqb/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v4}, Llb/f;->o()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    new-instance v5, Ll9/g;

    .line 84
    .line 85
    invoke-direct {v5, v4, v3}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move-object v5, v1

    .line 90
    :goto_3
    if-eqz v5, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    invoke-static {v2}, Lm9/e0;->S0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/String;

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    new-array v4, v4, [Ljava/lang/Class;

    .line 131
    .line 132
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_6
    invoke-static {v0, p0, v2}, Lha/c;->a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 145
    .line 146
    return-object p0
.end method

.method public static final j(Lma/e;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/e;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lma/m;->getSource()Lma/r0;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Leb/u;

    if-eqz v1, :cond_0

    check-cast v0, Leb/u;

    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass"

    iget-object v0, v0, Leb/u;->b:Leb/s;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lra/e;

    iget-object p0, v0, Lra/e;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lra/i$a;

    if-eqz v1, :cond_1

    check-cast v0, Lra/i$a;

    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass"

    iget-object v0, v0, Lra/i$a;->b:Lsa/v;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lsa/r;

    iget-object p0, v0, Lsa/r;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lsb/b;->f(Lma/g;)Llb/b;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lsa/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lga/z0;->h(Ljava/lang/ClassLoader;Llb/b;I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final k(Lqb/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqb/g<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lqb/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lqb/a;

    .line 6
    .line 7
    iget-object p0, p0, Lqb/g;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lna/c;

    .line 10
    .line 11
    invoke-static {p0}, Lga/z0;->i(Lna/c;)Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto/16 :goto_13

    .line 16
    .line 17
    :cond_0
    instance-of v0, p0, Lqb/b;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_d

    .line 22
    .line 23
    check-cast p0, Lqb/b;

    .line 24
    .line 25
    instance-of v0, p0, Lyb/p;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    move-object v0, p0

    .line 30
    check-cast v0, Lyb/p;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v2

    .line 34
    :goto_0
    if-eqz v0, :cond_14

    .line 35
    .line 36
    iget-object v0, v0, Lyb/p;->c:Lcc/e0;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto/16 :goto_12

    .line 41
    .line 42
    :cond_2
    iget-object v3, p0, Lqb/g;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Ljava/lang/Iterable;

    .line 45
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lqb/g;

    .line 70
    .line 71
    invoke-static {v5, p1}, Lga/z0;->k(Lqb/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    sget-object v3, Lja/k;->e:Llb/f;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v3}, Lcc/c1;->n()Lma/g;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_4

    .line 90
    .line 91
    move-object v3, v2

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-static {v3}, Lja/k;->r(Lma/g;)Lja/l;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    :goto_2
    if-nez v3, :cond_5

    .line 98
    .line 99
    const/4 v3, -0x1

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    sget-object v5, Lga/z0$a;->a:[I

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    aget v3, v5, v3

    .line 108
    .line 109
    :goto_3
    iget-object p0, p0, Lqb/g;->a:Ljava/lang/Object;

    .line 110
    .line 111
    packed-switch v3, :pswitch_data_0

    .line 112
    .line 113
    .line 114
    :pswitch_0
    new-instance p0, Lj7/p;

    .line 115
    .line 116
    invoke-direct {p0}, Lj7/p;-><init>()V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :pswitch_1
    check-cast p0, Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    new-array p1, p0, [D

    .line 127
    .line 128
    :goto_4
    if-ge v1, p0, :cond_6

    .line 129
    .line 130
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "null cannot be cast to non-null type kotlin.Double"

    .line 135
    .line 136
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    check-cast v0, Ljava/lang/Double;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    aput-wide v2, p1, v1

    .line 146
    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :pswitch_2
    check-cast p0, Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    new-array p1, p0, [J

    .line 157
    .line 158
    :goto_5
    if-ge v1, p0, :cond_6

    .line 159
    .line 160
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    .line 165
    .line 166
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    check-cast v0, Ljava/lang/Long;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    aput-wide v2, p1, v1

    .line 176
    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :pswitch_3
    check-cast p0, Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    new-array p1, p0, [F

    .line 187
    .line 188
    :goto_6
    if-ge v1, p0, :cond_6

    .line 189
    .line 190
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    .line 195
    .line 196
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    check-cast v0, Ljava/lang/Float;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    aput v0, p1, v1

    .line 206
    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :pswitch_4
    check-cast p0, Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    new-array p1, p0, [I

    .line 217
    .line 218
    :goto_7
    if-ge v1, p0, :cond_6

    .line 219
    .line 220
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    .line 225
    .line 226
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    check-cast v0, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    aput v0, p1, v1

    .line 236
    .line 237
    add-int/lit8 v1, v1, 0x1

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :pswitch_5
    check-cast p0, Ljava/util/List;

    .line 241
    .line 242
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    new-array p1, p0, [S

    .line 247
    .line 248
    :goto_8
    if-ge v1, p0, :cond_6

    .line 249
    .line 250
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v2, "null cannot be cast to non-null type kotlin.Short"

    .line 255
    .line 256
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    check-cast v0, Ljava/lang/Short;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    aput-short v0, p1, v1

    .line 266
    .line 267
    add-int/lit8 v1, v1, 0x1

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :pswitch_6
    check-cast p0, Ljava/util/List;

    .line 271
    .line 272
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    new-array p1, p0, [B

    .line 277
    .line 278
    :goto_9
    if-ge v1, p0, :cond_6

    .line 279
    .line 280
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const-string v2, "null cannot be cast to non-null type kotlin.Byte"

    .line 285
    .line 286
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    check-cast v0, Ljava/lang/Byte;

    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    aput-byte v0, p1, v1

    .line 296
    .line 297
    add-int/lit8 v1, v1, 0x1

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :pswitch_7
    check-cast p0, Ljava/util/List;

    .line 301
    .line 302
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    new-array p1, p0, [C

    .line 307
    .line 308
    :goto_a
    if-ge v1, p0, :cond_6

    .line 309
    .line 310
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    const-string v2, "null cannot be cast to non-null type kotlin.Char"

    .line 315
    .line 316
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    check-cast v0, Ljava/lang/Character;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    aput-char v0, p1, v1

    .line 326
    .line 327
    add-int/lit8 v1, v1, 0x1

    .line 328
    .line 329
    goto :goto_a

    .line 330
    :pswitch_8
    check-cast p0, Ljava/util/List;

    .line 331
    .line 332
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result p0

    .line 336
    new-array p1, p0, [Z

    .line 337
    .line 338
    :goto_b
    if-ge v1, p0, :cond_6

    .line 339
    .line 340
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    .line 345
    .line 346
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    check-cast v0, Ljava/lang/Boolean;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    aput-boolean v0, p1, v1

    .line 356
    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_6
    move-object p0, p1

    .line 361
    goto/16 :goto_13

    .line 362
    .line 363
    :pswitch_9
    invoke-static {v0}, Lja/k;->y(Lcc/e0;)Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_c

    .line 368
    .line 369
    invoke-virtual {v0}, Lcc/e0;->K0()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {v0}, Lm9/t;->p1(Ljava/util/List;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Lcc/i1;

    .line 378
    .line 379
    invoke-interface {v0}, Lcc/i1;->getType()Lcc/e0;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const-string v3, "type.arguments.single().type"

    .line 384
    .line 385
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-interface {v3}, Lcc/c1;->n()Lma/g;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    instance-of v5, v3, Lma/e;

    .line 397
    .line 398
    if-eqz v5, :cond_7

    .line 399
    .line 400
    check-cast v3, Lma/e;

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_7
    move-object v3, v2

    .line 404
    :goto_c
    if-eqz v3, :cond_b

    .line 405
    .line 406
    invoke-static {v0}, Lja/k;->I(Lcc/e0;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_8

    .line 411
    .line 412
    check-cast p0, Ljava/util/List;

    .line 413
    .line 414
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    new-array p1, p0, [Ljava/lang/String;

    .line 419
    .line 420
    :goto_d
    if-ge v1, p0, :cond_6

    .line 421
    .line 422
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const-string v2, "null cannot be cast to non-null type kotlin.String"

    .line 427
    .line 428
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    check-cast v0, Ljava/lang/String;

    .line 432
    .line 433
    aput-object v0, p1, v1

    .line 434
    .line 435
    add-int/lit8 v1, v1, 0x1

    .line 436
    .line 437
    goto :goto_d

    .line 438
    :cond_8
    sget-object v0, Lja/o$a;->P:Llb/d;

    .line 439
    .line 440
    invoke-static {v3, v0}, Lja/k;->c(Lma/g;Llb/d;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_9

    .line 445
    .line 446
    check-cast p0, Ljava/util/List;

    .line 447
    .line 448
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 449
    .line 450
    .line 451
    move-result p0

    .line 452
    new-array p1, p0, [Ljava/lang/Class;

    .line 453
    .line 454
    :goto_e
    if-ge v1, p0, :cond_6

    .line 455
    .line 456
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    const-string v2, "null cannot be cast to non-null type java.lang.Class<*>"

    .line 461
    .line 462
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    check-cast v0, Ljava/lang/Class;

    .line 466
    .line 467
    aput-object v0, p1, v1

    .line 468
    .line 469
    add-int/lit8 v1, v1, 0x1

    .line 470
    .line 471
    goto :goto_e

    .line 472
    :cond_9
    invoke-static {v3}, Lsb/b;->f(Lma/g;)Llb/b;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    if-eqz v0, :cond_14

    .line 477
    .line 478
    invoke-static {p1, v0, v1}, Lga/z0;->h(Ljava/lang/ClassLoader;Llb/b;I)Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    if-nez p1, :cond_a

    .line 483
    .line 484
    goto/16 :goto_12

    .line 485
    .line 486
    :cond_a
    check-cast p0, Ljava/util/List;

    .line 487
    .line 488
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 489
    .line 490
    .line 491
    move-result p0

    .line 492
    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    const-string p1, "null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>"

    .line 497
    .line 498
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    check-cast p0, [Ljava/lang/Object;

    .line 502
    .line 503
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    :goto_f
    if-ge v1, p1, :cond_16

    .line 508
    .line 509
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    aput-object v0, p0, v1

    .line 514
    .line 515
    add-int/lit8 v1, v1, 0x1

    .line 516
    .line 517
    goto :goto_f

    .line 518
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 519
    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    const-string v1, "Not a class type: "

    .line 523
    .line 524
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    throw p0

    .line 542
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    const-string p1, "Not an array type: "

    .line 545
    .line 546
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 557
    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw p1

    .line 566
    :cond_d
    instance-of v0, p0, Lqb/k;

    .line 567
    .line 568
    if-eqz v0, :cond_e

    .line 569
    .line 570
    check-cast p0, Lqb/k;

    .line 571
    .line 572
    iget-object p0, p0, Lqb/g;->a:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast p0, Ll9/g;

    .line 575
    .line 576
    iget-object v0, p0, Ll9/g;->a:Ljava/lang/Object;

    .line 577
    .line 578
    check-cast v0, Llb/b;

    .line 579
    .line 580
    iget-object p0, p0, Ll9/g;->b:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast p0, Llb/f;

    .line 583
    .line 584
    invoke-static {p1, v0, v1}, Lga/z0;->h(Ljava/lang/ClassLoader;Llb/b;I)Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    if-eqz p1, :cond_14

    .line 589
    .line 590
    invoke-virtual {p0}, Llb/f;->o()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object p0

    .line 594
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    goto :goto_13

    .line 599
    :cond_e
    instance-of v0, p0, Lqb/s;

    .line 600
    .line 601
    if-eqz v0, :cond_12

    .line 602
    .line 603
    check-cast p0, Lqb/s;

    .line 604
    .line 605
    iget-object p0, p0, Lqb/g;->a:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast p0, Lqb/s$a;

    .line 608
    .line 609
    instance-of v0, p0, Lqb/s$a$b;

    .line 610
    .line 611
    if-eqz v0, :cond_f

    .line 612
    .line 613
    check-cast p0, Lqb/s$a$b;

    .line 614
    .line 615
    iget-object p0, p0, Lqb/s$a$b;->a:Lqb/f;

    .line 616
    .line 617
    iget-object v0, p0, Lqb/f;->a:Llb/b;

    .line 618
    .line 619
    iget p0, p0, Lqb/f;->b:I

    .line 620
    .line 621
    invoke-static {p1, v0, p0}, Lga/z0;->h(Ljava/lang/ClassLoader;Llb/b;I)Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    goto :goto_13

    .line 626
    :cond_f
    instance-of p1, p0, Lqb/s$a$a;

    .line 627
    .line 628
    if-eqz p1, :cond_11

    .line 629
    .line 630
    check-cast p0, Lqb/s$a$a;

    .line 631
    .line 632
    iget-object p0, p0, Lqb/s$a$a;->a:Lcc/e0;

    .line 633
    .line 634
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 635
    .line 636
    .line 637
    move-result-object p0

    .line 638
    invoke-interface {p0}, Lcc/c1;->n()Lma/g;

    .line 639
    .line 640
    .line 641
    move-result-object p0

    .line 642
    instance-of p1, p0, Lma/e;

    .line 643
    .line 644
    if-eqz p1, :cond_10

    .line 645
    .line 646
    check-cast p0, Lma/e;

    .line 647
    .line 648
    goto :goto_10

    .line 649
    :cond_10
    move-object p0, v2

    .line 650
    :goto_10
    if-eqz p0, :cond_14

    .line 651
    .line 652
    invoke-static {p0}, Lga/z0;->j(Lma/e;)Ljava/lang/Class;

    .line 653
    .line 654
    .line 655
    move-result-object p0

    .line 656
    goto :goto_13

    .line 657
    :cond_11
    new-instance p0, Lj7/p;

    .line 658
    .line 659
    invoke-direct {p0}, Lj7/p;-><init>()V

    .line 660
    .line 661
    .line 662
    throw p0

    .line 663
    :cond_12
    instance-of p1, p0, Lqb/l;

    .line 664
    .line 665
    if-eqz p1, :cond_13

    .line 666
    .line 667
    const/4 p1, 0x1

    .line 668
    goto :goto_11

    .line 669
    :cond_13
    instance-of p1, p0, Lqb/u;

    .line 670
    .line 671
    :goto_11
    if-eqz p1, :cond_15

    .line 672
    .line 673
    :cond_14
    :goto_12
    move-object p0, v2

    .line 674
    goto :goto_13

    .line 675
    :cond_15
    invoke-virtual {p0}, Lqb/g;->b()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    :cond_16
    :goto_13
    return-object p0

    .line 680
    nop

    .line 681
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
