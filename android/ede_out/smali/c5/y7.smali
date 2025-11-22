.class public final Lc5/y7;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc5/y7;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Z

.field public final j:Z

.field public final k:J

.field public final l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:J

.field public final n:J

.field public final p:I

.field public final q:Z

.field public final r:Z

.field public final s:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final t:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final v:J

.field public final w:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final y:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/z7;

    invoke-direct {v0}, Lc5/z7;-><init>()V

    sput-object v0, Lc5/y7;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "JJIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ls3/a;-><init>()V

    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    move-object v1, p1

    iput-object v1, v0, Lc5/y7;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lc5/y7;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lc5/y7;->c:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lc5/y7;->k:J

    move-object v1, p6

    iput-object v1, v0, Lc5/y7;->d:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lc5/y7;->e:J

    move-wide v1, p9

    iput-wide v1, v0, Lc5/y7;->f:J

    move-object v1, p11

    iput-object v1, v0, Lc5/y7;->g:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lc5/y7;->h:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lc5/y7;->j:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lc5/y7;->l:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lc5/y7;->m:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lc5/y7;->n:J

    move/from16 v1, p19

    iput v1, v0, Lc5/y7;->p:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lc5/y7;->q:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lc5/y7;->r:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lc5/y7;->s:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lc5/y7;->t:Ljava/lang/Boolean;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lc5/y7;->v:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lc5/y7;->w:Ljava/util/List;

    move-object/from16 v1, p27

    iput-object v1, v0, Lc5/y7;->x:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lc5/y7;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ls3/a;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lc5/y7;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lc5/y7;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lc5/y7;->c:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lc5/y7;->k:J

    move-object v1, p4

    iput-object v1, v0, Lc5/y7;->d:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lc5/y7;->e:J

    move-wide v1, p7

    iput-wide v1, v0, Lc5/y7;->f:J

    move-object v1, p9

    iput-object v1, v0, Lc5/y7;->g:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lc5/y7;->h:Z

    move v1, p11

    iput-boolean v1, v0, Lc5/y7;->j:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lc5/y7;->l:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lc5/y7;->m:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lc5/y7;->n:J

    move/from16 v1, p19

    iput v1, v0, Lc5/y7;->p:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lc5/y7;->q:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lc5/y7;->r:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lc5/y7;->s:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lc5/y7;->t:Ljava/lang/Boolean;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lc5/y7;->v:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lc5/y7;->w:Ljava/util/List;

    move-object/from16 v1, p27

    iput-object v1, v0, Lc5/y7;->x:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lc5/y7;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Ls3/c;->r(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x2

    .line 8
    iget-object v1, p0, Lc5/y7;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget-object v1, p0, Lc5/y7;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    iget-object v1, p0, Lc5/y7;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    iget-object v1, p0, Lc5/y7;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    iget-wide v1, p0, Lc5/y7;->e:J

    .line 33
    .line 34
    invoke-static {p1, v0, v1, v2}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    iget-wide v1, p0, Lc5/y7;->f:J

    .line 39
    .line 40
    invoke-static {p1, v0, v1, v2}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x8

    .line 44
    .line 45
    iget-object v1, p0, Lc5/y7;->g:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x9

    .line 51
    .line 52
    iget-boolean v1, p0, Lc5/y7;->h:Z

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0xa

    .line 58
    .line 59
    iget-boolean v1, p0, Lc5/y7;->j:Z

    .line 60
    .line 61
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0xb

    .line 65
    .line 66
    iget-wide v1, p0, Lc5/y7;->k:J

    .line 67
    .line 68
    invoke-static {p1, v0, v1, v2}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 69
    .line 70
    .line 71
    const/16 v0, 0xc

    .line 72
    .line 73
    iget-object v1, p0, Lc5/y7;->l:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/16 v0, 0xd

    .line 79
    .line 80
    iget-wide v1, p0, Lc5/y7;->m:J

    .line 81
    .line 82
    invoke-static {p1, v0, v1, v2}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 83
    .line 84
    .line 85
    const/16 v0, 0xe

    .line 86
    .line 87
    iget-wide v1, p0, Lc5/y7;->n:J

    .line 88
    .line 89
    invoke-static {p1, v0, v1, v2}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 90
    .line 91
    .line 92
    const/16 v0, 0xf

    .line 93
    .line 94
    iget v1, p0, Lc5/y7;->p:I

    .line 95
    .line 96
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 97
    .line 98
    .line 99
    const/16 v0, 0x10

    .line 100
    .line 101
    iget-boolean v1, p0, Lc5/y7;->q:Z

    .line 102
    .line 103
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 104
    .line 105
    .line 106
    const/16 v0, 0x12

    .line 107
    .line 108
    iget-boolean v1, p0, Lc5/y7;->r:Z

    .line 109
    .line 110
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x13

    .line 114
    .line 115
    iget-object v1, p0, Lc5/y7;->s:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lc5/y7;->t:Ljava/lang/Boolean;

    .line 121
    .line 122
    if-nez v0, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    const v1, 0x40015

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    .line 137
    .line 138
    :goto_0
    const/16 v0, 0x16

    .line 139
    .line 140
    iget-wide v1, p0, Lc5/y7;->v:J

    .line 141
    .line 142
    invoke-static {p1, v0, v1, v2}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lc5/y7;->w:Ljava/util/List;

    .line 146
    .line 147
    if-nez v0, :cond_1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    const/16 v1, 0x17

    .line 151
    .line 152
    invoke-static {p1, v1}, Ls3/c;->r(Landroid/os/Parcel;I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v1}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 160
    .line 161
    .line 162
    :goto_1
    const/16 v0, 0x18

    .line 163
    .line 164
    iget-object v1, p0, Lc5/y7;->x:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/16 v0, 0x19

    .line 170
    .line 171
    iget-object v1, p0, Lc5/y7;->y:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1, p2}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
