.class public final Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lob/j$a;
    .locals 1

    sget-object v0, Lob/j$a;->a:Lob/j$a;

    return-object v0
.end method

.method public b(Lma/a;Lma/a;Lma/e;)Lob/j$b;
    .locals 7

    .line 1
    const-string v0, "superDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "subDescriptor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lma/b;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    instance-of v0, p2, Lma/u;

    .line 17
    .line 18
    if-eqz v0, :cond_8

    .line 19
    .line 20
    invoke-static {p2}, Lja/k;->z(Lma/j;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    sget v0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->m:I

    .line 29
    .line 30
    move-object v0, p2

    .line 31
    check-cast v0, Lma/u;

    .line 32
    .line 33
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "subDescriptor.name"

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b(Llb/f;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e$a;

    .line 49
    .line 50
    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/e;->k:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_1
    move-object v2, p1

    .line 68
    check-cast v2, Lma/b;

    .line 69
    .line 70
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->c(Lma/b;)Lma/b;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    instance-of v3, p1, Lma/u;

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    move-object v4, p1

    .line 79
    check-cast v4, Lma/u;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v4, 0x0

    .line 83
    :goto_0
    const/4 v5, 0x1

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Lma/u;->v0()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-interface {v4}, Lma/u;->v0()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ne v6, v4, :cond_3

    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const/4 v4, 0x0

    .line 99
    :goto_1
    xor-int/2addr v4, v5

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    if-eqz v2, :cond_7

    .line 103
    .line 104
    invoke-interface {v0}, Lma/u;->v0()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    instance-of v4, p3, Lxa/c;

    .line 112
    .line 113
    if-eqz v4, :cond_8

    .line 114
    .line 115
    invoke-interface {v0}, Lma/u;->Y()Lma/u;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz v4, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    if-eqz v2, :cond_8

    .line 123
    .line 124
    invoke-static {p3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->d(Lma/e;Lma/b;)Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_6

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    instance-of p3, v2, Lma/u;

    .line 132
    .line 133
    if-eqz p3, :cond_7

    .line 134
    .line 135
    if-eqz v3, :cond_7

    .line 136
    .line 137
    check-cast v2, Lma/u;

    .line 138
    .line 139
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lma/u;)Lma/u;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    if-eqz p3, :cond_7

    .line 144
    .line 145
    const/4 p3, 0x2

    .line 146
    invoke-static {v0, p3}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    move-object v2, p1

    .line 151
    check-cast v2, Lma/u;

    .line 152
    .line 153
    invoke-interface {v2}, Lma/u;->a()Lma/u;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "superDescriptor.original"

    .line 158
    .line 159
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v2, p3}, Leb/w;->a(Lma/u;I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-static {v0, p3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-eqz p3, :cond_7

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    :goto_2
    const/4 v1, 0x1

    .line 174
    :cond_8
    :goto_3
    sget-object p3, Lob/j$b;->b:Lob/j$b;

    .line 175
    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    return-object p3

    .line 179
    :cond_9
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;->a(Lma/a;Lma/a;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_a

    .line 184
    .line 185
    return-object p3

    .line 186
    :cond_a
    sget-object p1, Lob/j$b;->c:Lob/j$b;

    .line 187
    .line 188
    return-object p1
.end method
