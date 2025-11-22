.class public final Lga/n$a$i;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/n$a;-><init>(Lga/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lma/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/n<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/n$a$i;->a:Lga/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    sget v0, Lga/n;->d:I

    .line 2
    .line 3
    iget-object v0, p0, Lga/n$a$i;->a:Lga/n;

    .line 4
    .line 5
    invoke-virtual {v0}, Lga/n;->x()Llb/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lga/n;->c:Lga/t0$b;

    .line 10
    .line 11
    invoke-virtual {v2}, Lga/t0$b;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lga/n$a;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v3, Lga/s$a;->b:[Lda/m;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aget-object v3, v3, v4

    .line 24
    .line 25
    iget-object v2, v2, Lga/s$a;->a:Lga/t0$a;

    .line 26
    .line 27
    invoke-virtual {v2}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "<get-moduleData>(...)"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v2, Lra/h;

    .line 37
    .line 38
    iget-boolean v3, v1, Llb/b;->c:Z

    .line 39
    .line 40
    iget-object v2, v2, Lra/h;->a:Lyb/l;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lyb/l;->b(Llb/b;)Lma/e;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, v2, Lyb/l;->b:Lma/b0;

    .line 50
    .line 51
    invoke-static {v2, v1}, Lma/t;->a(Lma/b0;Llb/b;)Lma/e;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    if-nez v1, :cond_3

    .line 56
    .line 57
    iget-object v0, v0, Lga/n;->b:Ljava/lang/Class;

    .line 58
    .line 59
    invoke-static {v0}, Lra/e$a;->a(Ljava/lang/Class;)Lra/e;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-object v1, v1, Lra/e;->b:Lfb/a;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object v1, v1, Lfb/a;->a:Lfb/a$a;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v1, 0x0

    .line 73
    :goto_1
    if-nez v1, :cond_2

    .line 74
    .line 75
    const/4 v2, -0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    sget-object v2, Lga/n$b;->a:[I

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    aget v2, v2, v3

    .line 84
    .line 85
    :goto_2
    const/4 v3, 0x1

    .line 86
    packed-switch v2, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    :pswitch_0
    new-instance v0, Lj7/p;

    .line 90
    .line 91
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :pswitch_1
    new-instance v2, Ll9/f;

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v5, "Unknown class: "

    .line 100
    .line 101
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, " (kind = "

    .line 108
    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 v0, 0x29

    .line 116
    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {v2, v0, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    throw v2

    .line 128
    :pswitch_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 129
    .line 130
    const-string v2, "This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It\'s not a Kotlin class or interface, so the reflection library has no idea what declarations it has. Please use Java reflection to inspect this class: "

    .line 131
    .line 132
    invoke-static {v2, v0}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v1

    .line 140
    :pswitch_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 141
    .line 142
    const-string v2, "Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: "

    .line 143
    .line 144
    invoke-static {v2, v0}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v1

    .line 152
    :pswitch_4
    new-instance v1, Ll9/f;

    .line 153
    .line 154
    const-string v2, "Unresolved class: "

    .line 155
    .line 156
    invoke-static {v2, v0}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-direct {v1, v0, v3}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    throw v1

    .line 164
    :cond_3
    return-object v1

    .line 165
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
