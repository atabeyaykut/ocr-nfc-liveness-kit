.class public final Lcom/google/android/gms/location/LocationRequest;
.super Ls3/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationRequest$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:F

.field public final h:Z

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final n:Z

.field public final p:Landroid/os/WorkSource;

.field public final q:Lm4/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw4/q;

    invoke-direct {v0}, Lw4/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/WorkSource;

    move-object/from16 v21, v1

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    const/16 v1, 0x66

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x927c0

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const-wide v10, 0x7fffffffffffffffL

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/32 v15, 0x36ee80

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Lm4/p;)V

    return-void
.end method

.method public constructor <init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Lm4/p;)V
    .locals 7
    .param p19    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p22    # Lm4/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ls3/a;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/location/LocationRequest;->a:I

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    move-wide v3, p4

    iput-wide v3, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    move-wide v3, p6

    iput-wide v3, v0, Lcom/google/android/gms/location/LocationRequest;->d:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, p8, v3

    if-nez v5, :cond_0

    move-wide/from16 v3, p10

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, p8, v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide/from16 v5, p10

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_0
    iput-wide v3, v0, Lcom/google/android/gms/location/LocationRequest;->e:J

    move/from16 v3, p12

    iput v3, v0, Lcom/google/android/gms/location/LocationRequest;->f:I

    move/from16 v3, p13

    iput v3, v0, Lcom/google/android/gms/location/LocationRequest;->g:F

    move/from16 v3, p14

    iput-boolean v3, v0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    const-wide/16 v3, -0x1

    cmp-long v5, p15, v3

    if-eqz v5, :cond_1

    move-wide/from16 v1, p15

    :cond_1
    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->j:J

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/gms/location/LocationRequest;->k:I

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/gms/location/LocationRequest;->l:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/location/LocationRequest;->m:Ljava/lang/String;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/google/android/gms/location/LocationRequest;->n:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/location/LocationRequest;->p:Landroid/os/WorkSource;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/android/gms/location/LocationRequest;->q:Lm4/p;

    return-void
.end method

.method public static Z(J)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string p0, "\u221e"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object v0, Lm4/x;->a:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, v0}, Lm4/x;->a(JLjava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method


# virtual methods
.method public final E()Z
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    shr-long v1, v2, v0

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->a:I

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    if-ne v2, v0, :cond_3

    const/16 v0, 0x69

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    iget-wide v6, p1, Lcom/google/android/gms/location/LocationRequest;->b:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iget-wide v6, p1, Lcom/google/android/gms/location/LocationRequest;->c:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->E()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->E()Z

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    iget-wide v6, p1, Lcom/google/android/gms/location/LocationRequest;->d:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    iget-wide v6, p1, Lcom/google/android/gms/location/LocationRequest;->e:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->f:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->g:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/LocationRequest;->h:Z

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->k:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->k:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->l:I

    iget v2, p1, Lcom/google/android/gms/location/LocationRequest;->l:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->n:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/LocationRequest;->n:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/location/LocationRequest;->p:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/google/android/gms/location/LocationRequest;->p:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/location/LocationRequest;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/location/LocationRequest;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/location/LocationRequest;->q:Lm4/p;

    iget-object p1, p1, Lcom/google/android/gms/location/LocationRequest;->q:Lm4/p;

    invoke-static {v0, p1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/location/LocationRequest;->p:Landroid/os/WorkSource;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "Request["

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/constraintlayout/core/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x69

    .line 9
    .line 10
    iget v3, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v3, v2, :cond_0

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v5, 0x0

    .line 18
    :goto_0
    iget-wide v6, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string v5, "@"

    .line 24
    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->E()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {v6, v7, v0}, Lm4/x;->a(JLjava/lang/StringBuilder;)V

    .line 33
    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    const-string v5, "/"

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide v8, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    .line 43
    .line 44
    invoke-static {v8, v9, v0}, Lm4/x;->a(JLjava/lang/StringBuilder;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    const-string v5, " "

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static {v3}, Lx5/a;->C(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    if-ne v3, v2, :cond_3

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const/4 v5, 0x0

    .line 64
    :goto_2
    iget-wide v8, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 65
    .line 66
    if-nez v5, :cond_4

    .line 67
    .line 68
    cmp-long v5, v8, v6

    .line 69
    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    :cond_4
    const-string v5, ", minUpdateInterval="

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {v8, v9}, Lcom/google/android/gms/location/LocationRequest;->Z(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_5
    iget v5, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    .line 85
    .line 86
    float-to-double v8, v5

    .line 87
    const-wide/16 v10, 0x0

    .line 88
    .line 89
    cmpl-double v12, v8, v10

    .line 90
    .line 91
    if-lez v12, :cond_6

    .line 92
    .line 93
    const-string v8, ", minUpdateDistance="

    .line 94
    .line 95
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_6
    if-ne v3, v2, :cond_7

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    :cond_7
    const-wide v2, 0x7fffffffffffffffL

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    iget-wide v8, p0, Lcom/google/android/gms/location/LocationRequest;->j:J

    .line 110
    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    cmp-long v1, v8, v2

    .line 114
    .line 115
    if-eqz v1, :cond_9

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    cmp-long v1, v8, v6

    .line 119
    .line 120
    if-eqz v1, :cond_9

    .line 121
    .line 122
    :goto_3
    const-string v1, ", maxUpdateAge="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-static {v8, v9}, Lcom/google/android/gms/location/LocationRequest;->Z(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_9
    iget-wide v5, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 135
    .line 136
    cmp-long v1, v5, v2

    .line 137
    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    const-string v1, ", duration="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {v5, v6, v0}, Lm4/x;->a(JLjava/lang/StringBuilder;)V

    .line 146
    .line 147
    .line 148
    :cond_a
    const v1, 0x7fffffff

    .line 149
    .line 150
    .line 151
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    .line 152
    .line 153
    if-eq v2, v1, :cond_b

    .line 154
    .line 155
    const-string v1, ", maxUpdates="

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :cond_b
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->l:I

    .line 164
    .line 165
    const-string v2, ", "

    .line 166
    .line 167
    if-eqz v1, :cond_f

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    if-eqz v1, :cond_e

    .line 173
    .line 174
    if-eq v1, v4, :cond_d

    .line 175
    .line 176
    const/4 v3, 0x2

    .line 177
    if-ne v1, v3, :cond_c

    .line 178
    .line 179
    const-string v1, "THROTTLE_NEVER"

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_d
    const-string v1, "THROTTLE_ALWAYS"

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_e
    const-string v1, "THROTTLE_BACKGROUND"

    .line 192
    .line 193
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    :cond_f
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->k:I

    .line 197
    .line 198
    if-eqz v1, :cond_10

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Lc5/w;->R(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    .line 211
    .line 212
    if-eqz v1, :cond_11

    .line 213
    .line 214
    const-string v1, ", waitForAccurateLocation"

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->n:Z

    .line 220
    .line 221
    if-eqz v1, :cond_12

    .line 222
    .line 223
    const-string v1, ", bypass"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->m:Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v1, :cond_13

    .line 231
    .line 232
    const-string v3, ", moduleId="

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->p:Landroid/os/WorkSource;

    .line 241
    .line 242
    invoke-static {v1}, Lw3/h;->b(Landroid/os/WorkSource;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_14

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/location/LocationRequest;->q:Lm4/p;

    .line 255
    .line 256
    if-eqz v1, :cond_15

    .line 257
    .line 258
    const-string v2, ", impersonation="

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :cond_15
    const/16 v1, 0x5d

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Ls3/c;->r(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 15
    .line 16
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 21
    .line 22
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x6

    .line 26
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x7

    .line 32
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Ls3/c;->g(Landroid/os/Parcel;IF)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->d:J

    .line 40
    .line 41
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x9

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    .line 47
    .line 48
    invoke-static {p1, v1, v2}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0xa

    .line 52
    .line 53
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 54
    .line 55
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0xb

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->j:J

    .line 61
    .line 62
    invoke-static {p1, v1, v2, v3}, Ls3/c;->l(Landroid/os/Parcel;IJ)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0xc

    .line 66
    .line 67
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->k:I

    .line 68
    .line 69
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0xd

    .line 73
    .line 74
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->l:I

    .line 75
    .line 76
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 77
    .line 78
    .line 79
    const/16 v1, 0xe

    .line 80
    .line 81
    iget-object v2, p0, Lcom/google/android/gms/location/LocationRequest;->m:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0xf

    .line 87
    .line 88
    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->n:Z

    .line 89
    .line 90
    invoke-static {p1, v1, v2}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x10

    .line 94
    .line 95
    iget-object v2, p0, Lcom/google/android/gms/location/LocationRequest;->p:Landroid/os/WorkSource;

    .line 96
    .line 97
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 98
    .line 99
    .line 100
    const/16 v1, 0x11

    .line 101
    .line 102
    iget-object v2, p0, Lcom/google/android/gms/location/LocationRequest;->q:Lm4/p;

    .line 103
    .line 104
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
