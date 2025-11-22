.class public final Lza/a$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/a;-><init>(Lcb/g;Lx9/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcb/q;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/a;


# direct methods
.method public constructor <init>(Lza/a;)V
    .locals 0

    iput-object p1, p0, Lza/a$a;->a:Lza/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcb/q;

    .line 2
    .line 3
    const-string v0, "m"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lza/a$a;->a:Lza/a;

    .line 9
    .line 10
    iget-object v0, v0, Lza/a;->b:Lx9/l;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_a

    .line 24
    .line 25
    invoke-interface {p1}, Lcb/p;->i()Lsa/r;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lsa/r;->E()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v0, :cond_9

    .line 35
    .line 36
    invoke-interface {p1}, Lcb/s;->getName()Llb/f;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const v4, -0x69e9ad94

    .line 49
    .line 50
    .line 51
    if-eq v3, v4, :cond_6

    .line 52
    .line 53
    const v4, -0x4d378041

    .line 54
    .line 55
    .line 56
    if-eq v3, v4, :cond_1

    .line 57
    .line 58
    const v4, 0x8cdac1b

    .line 59
    .line 60
    .line 61
    if-eq v3, v4, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const-string v3, "hashCode"

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string v3, "equals"

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {p1}, Lcb/q;->g()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lm9/t;->r1(Ljava/util/List;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcb/z;

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-interface {p1}, Lcb/z;->getType()Lcb/w;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move-object p1, v0

    .line 101
    :goto_0
    instance-of v3, p1, Lcb/j;

    .line 102
    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    move-object v0, p1

    .line 106
    check-cast v0, Lcb/j;

    .line 107
    .line 108
    :cond_4
    if-nez v0, :cond_5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    invoke-interface {v0}, Lcb/j;->b()Lcb/i;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    instance-of v0, p1, Lcb/g;

    .line 116
    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    check-cast p1, Lcb/g;

    .line 120
    .line 121
    invoke-interface {p1}, Lcb/g;->d()Llb/c;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    invoke-virtual {p1}, Llb/c;->b()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v0, "java.lang.Object"

    .line 132
    .line 133
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    const-string v3, "toString"

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    :cond_7
    invoke-interface {p1}, Lcb/q;->g()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    goto :goto_2

    .line 158
    :cond_8
    :goto_1
    const/4 p1, 0x0

    .line 159
    :goto_2
    if-eqz p1, :cond_9

    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    goto :goto_3

    .line 163
    :cond_9
    const/4 p1, 0x0

    .line 164
    :goto_3
    if-nez p1, :cond_a

    .line 165
    .line 166
    const/4 v1, 0x1

    .line 167
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    return-object p1
.end method
