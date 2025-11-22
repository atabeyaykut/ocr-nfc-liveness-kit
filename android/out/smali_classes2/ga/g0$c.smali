.class public final Lga/g0$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/g0;-><init>(Lga/s;Lma/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/g0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/g0<",
            "+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/g0$c;->a:Lga/g0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lga/g0$c;->a:Lga/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lga/l0;->r()Ljava/lang/reflect/Member;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "delegate method "

    .line 8
    .line 9
    const-string v3, "delegate field/method "

    .line 10
    .line 11
    :try_start_0
    sget-object v4, Lga/l0;->l:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0}, Lga/l0;->q()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lga/l0;->s()Lma/l0;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v7, v0, Lga/l0;->h:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v7, v5}, Lb8/f;->p(Ljava/lang/Object;Lma/b;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v5, v6

    .line 32
    :goto_0
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eq v5, v4, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_1
    if-eqz v4, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v5, v6

    .line 43
    :goto_2
    invoke-virtual {v0}, Lga/l0;->q()Z

    .line 44
    .line 45
    .line 46
    instance-of v4, v1, Ljava/lang/reflect/AccessibleObject;

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    move-object v4, v1

    .line 51
    check-cast v4, Ljava/lang/reflect/AccessibleObject;

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v4, v6

    .line 55
    :goto_3
    if-nez v4, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-static {v0}, Lfa/a;->a(Lga/g0;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 63
    .line 64
    .line 65
    :goto_4
    if-nez v1, :cond_5

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_5
    instance-of v0, v1, Ljava/lang/reflect/Field;

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    check-cast v1, Ljava/lang/reflect/Field;

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    goto :goto_5

    .line 80
    :cond_6
    instance-of v0, v1, Ljava/lang/reflect/Method;

    .line 81
    .line 82
    if-eqz v0, :cond_b

    .line 83
    .line 84
    move-object v0, v1

    .line 85
    check-cast v0, Ljava/lang/reflect/Method;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    array-length v0, v0

    .line 92
    if-eqz v0, :cond_a

    .line 93
    .line 94
    if-eq v0, v7, :cond_8

    .line 95
    .line 96
    const/4 v3, 0x2

    .line 97
    if-ne v0, v3, :cond_7

    .line 98
    .line 99
    move-object v0, v1

    .line 100
    check-cast v0, Ljava/lang/reflect/Method;

    .line 101
    .line 102
    new-array v2, v3, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v5, v2, v8

    .line 105
    .line 106
    check-cast v1, Ljava/lang/reflect/Method;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    aget-object v1, v1, v7

    .line 113
    .line 114
    const-string v3, "fieldOrMethod.parameterTypes[1]"

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lga/z0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    aput-object v1, v2, v7

    .line 124
    .line 125
    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    goto :goto_5

    .line 130
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " should take 0, 1, or 2 parameters"

    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_8
    move-object v0, v1

    .line 154
    check-cast v0, Ljava/lang/reflect/Method;

    .line 155
    .line 156
    new-array v2, v7, [Ljava/lang/Object;

    .line 157
    .line 158
    if-nez v5, :cond_9

    .line 159
    .line 160
    check-cast v1, Ljava/lang/reflect/Method;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    aget-object v1, v1, v8

    .line 167
    .line 168
    const-string v3, "fieldOrMethod.parameterTypes[0]"

    .line 169
    .line 170
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Lga/z0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    :cond_9
    aput-object v5, v2, v8

    .line 178
    .line 179
    invoke-virtual {v0, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    goto :goto_5

    .line 184
    :cond_a
    check-cast v1, Ljava/lang/reflect/Method;

    .line 185
    .line 186
    new-array v0, v8, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-virtual {v1, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    :goto_5
    return-object v6

    .line 193
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, " neither field nor method"

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Lea/b;

    .line 218
    .line 219
    invoke-direct {v1, v0}, Lea/b;-><init>(Ljava/lang/IllegalAccessException;)V

    .line 220
    .line 221
    .line 222
    throw v1
.end method
