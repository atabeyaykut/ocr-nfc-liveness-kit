.class public final Lnb/d$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnb/d;-><init>(Lnb/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lnb/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnb/d;


# direct methods
.method public constructor <init>(Lnb/d;)V
    .locals 0

    iput-object p1, p0, Lnb/d$b;->a:Lnb/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 16

    .line 1
    sget-object v0, Lnb/f;->a:Lnb/f;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lnb/d$b;->a:Lnb/d;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v3, "changeOptions"

    .line 11
    .line 12
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v2, Lnb/d;->c:Lnb/k;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v3, Lnb/k;

    .line 21
    .line 22
    invoke-direct {v3}, Lnb/k;-><init>()V

    .line 23
    .line 24
    .line 25
    const-class v4, Lnb/k;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v6, "this::class.java.declaredFields"

    .line 32
    .line 33
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    array-length v6, v5

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    :goto_0
    const/4 v9, 0x1

    .line 40
    if-ge v8, v6, :cond_5

    .line 41
    .line 42
    aget-object v10, v5, v8

    .line 43
    .line 44
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    and-int/lit8 v11, v11, 0x8

    .line 49
    .line 50
    if-nez v11, :cond_4

    .line 51
    .line 52
    invoke-virtual {v10, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    instance-of v12, v11, Lz9/a;

    .line 60
    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    check-cast v11, Lz9/a;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/4 v11, 0x0

    .line 67
    :goto_1
    if-nez v11, :cond_1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_1
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    const-string v13, "field.name"

    .line 75
    .line 76
    invoke-static {v12, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v14, "is"

    .line 80
    .line 81
    invoke-static {v12, v14, v7}, Lmc/j;->D(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    new-instance v15, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v9, "get"

    .line 95
    .line 96
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {v9, v13}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    if-lez v13, :cond_2

    .line 111
    .line 112
    const/4 v13, 0x1

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    const/4 v13, 0x0

    .line 115
    :goto_2
    if-eqz v13, :cond_3

    .line 116
    .line 117
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    const/4 v7, 0x1

    .line 126
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const-string v9, "this as java.lang.String).substring(startIndex)"

    .line 131
    .line 132
    invoke-static {v7, v9}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    :cond_3
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    new-instance v9, Lkotlin/jvm/internal/r;

    .line 158
    .line 159
    invoke-direct {v9, v12, v14, v7}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v7, v11, Lz9/a;->a:Ljava/lang/Object;

    .line 163
    .line 164
    new-instance v9, Lnb/l;

    .line 165
    .line 166
    invoke-direct {v9, v7, v3}, Lnb/l;-><init>(Ljava/lang/Object;Lnb/k;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_5
    invoke-virtual {v0, v3}, Lnb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const/4 v0, 0x1

    .line 181
    iput-boolean v0, v3, Lnb/k;->a:Z

    .line 182
    .line 183
    new-instance v0, Lnb/d;

    .line 184
    .line 185
    invoke-direct {v0, v3}, Lnb/d;-><init>(Lnb/k;)V

    .line 186
    .line 187
    .line 188
    return-object v0
.end method
