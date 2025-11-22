.class public final Lsa/h0;
.super Lsa/e0;
.source "SourceFile"

# interfaces
.implements Lcb/a0;


# instance fields
.field public final a:Ljava/lang/reflect/WildcardType;

.field public final b:Lm9/v;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    invoke-direct {p0}, Lsa/e0;-><init>()V

    iput-object p1, p0, Lsa/h0;->a:Ljava/lang/reflect/WildcardType;

    sget-object p1, Lm9/v;->a:Lm9/v;

    iput-object p1, p0, Lsa/h0;->b:Lm9/v;

    return-void
.end method


# virtual methods
.method public final H()Z
    .locals 2

    iget-object v0, p0, Lsa/h0;->a:Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "reflectType.upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lm9/k;->r0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final O()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lsa/h0;->a:Ljava/lang/reflect/WildcardType;

    return-object v0
.end method

.method public final getAnnotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcb/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsa/h0;->b:Lm9/v;

    return-object v0
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final s()Lsa/e0;
    .locals 5

    .line 1
    iget-object v0, p0, Lsa/h0;->a:Ljava/lang/reflect/WildcardType;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    array-length v3, v1

    .line 12
    const/4 v4, 0x1

    .line 13
    if-gt v3, v4, :cond_a

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-gt v3, v4, :cond_a

    .line 17
    .line 18
    array-length v0, v2

    .line 19
    if-ne v0, v4, :cond_4

    .line 20
    .line 21
    invoke-static {v2}, Lm9/k;->y0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "lowerBounds.single()"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v0, Ljava/lang/reflect/Type;

    .line 31
    .line 32
    instance-of v1, v0, Ljava/lang/Class;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    new-instance v0, Lsa/c0;

    .line 46
    .line 47
    invoke-direct {v0, v2}, Lsa/c0;-><init>(Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    move-object v1, v0

    .line 59
    check-cast v1, Ljava/lang/Class;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    new-instance v1, Lsa/h0;

    .line 73
    .line 74
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Lsa/h0;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    new-instance v1, Lsa/t;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lsa/t;-><init>(Ljava/lang/reflect/Type;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    new-instance v1, Lsa/i;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Lsa/i;-><init>(Ljava/lang/reflect/Type;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    move-object v0, v1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    array-length v0, v1

    .line 94
    if-ne v0, v4, :cond_9

    .line 95
    .line 96
    invoke-static {v1}, Lm9/k;->y0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/reflect/Type;

    .line 101
    .line 102
    const-class v1, Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_9

    .line 109
    .line 110
    const-string v1, "ub"

    .line 111
    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    instance-of v1, v0, Ljava/lang/Class;

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    move-object v2, v0

    .line 120
    check-cast v2, Ljava/lang/Class;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    new-instance v0, Lsa/c0;

    .line 129
    .line 130
    invoke-direct {v0, v2}, Lsa/c0;-><init>(Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    .line 135
    .line 136
    if-nez v2, :cond_8

    .line 137
    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    move-object v1, v0

    .line 141
    check-cast v1, Ljava/lang/Class;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_6

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    new-instance v1, Lsa/h0;

    .line 155
    .line 156
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 157
    .line 158
    invoke-direct {v1, v0}, Lsa/h0;-><init>(Ljava/lang/reflect/WildcardType;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    new-instance v1, Lsa/t;

    .line 163
    .line 164
    invoke-direct {v1, v0}, Lsa/t;-><init>(Ljava/lang/reflect/Type;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_8
    :goto_2
    new-instance v1, Lsa/i;

    .line 169
    .line 170
    invoke-direct {v1, v0}, Lsa/i;-><init>(Ljava/lang/reflect/Type;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_9
    const/4 v0, 0x0

    .line 175
    :goto_3
    return-object v0

    .line 176
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v3, "Wildcard types with many bounds are not yet supported: "

    .line 181
    .line 182
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v1
.end method
