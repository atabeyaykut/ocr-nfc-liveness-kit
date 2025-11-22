.class public final Lcom/google/android/gms/internal/clearcut/n4;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/clearcut/n4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/o4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/o4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/n4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/z3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls3/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/n4;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/clearcut/n4;->b:I

    .line 10
    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/google/android/gms/internal/clearcut/n4;->d:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/n4;->e:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/n4;->f:Z

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/n4;->h:Z

    .line 25
    .line 26
    iget p1, p6, Lcom/google/android/gms/internal/clearcut/z3;->a:I

    .line 27
    .line 28
    iput p1, p0, Lcom/google/android/gms/internal/clearcut/n4;->j:I

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/n4;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/n4;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/clearcut/n4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/clearcut/n4;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/clearcut/n4;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/clearcut/n4;->h:Z

    iput p9, p0, Lcom/google/android/gms/internal/clearcut/n4;->j:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/n4;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/n4;

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/n4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/n4;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/n4;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/n4;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/n4;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/clearcut/n4;->f:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/clearcut/n4;->h:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->j:I

    iget p1, p1, Lcom/google/android/gms/internal/clearcut/n4;->j:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/n4;->a:Ljava/lang/String;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->b:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    .line 30
    .line 31
    aput-object v2, v0, v1

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/n4;->d:Ljava/lang/String;

    .line 35
    .line 36
    aput-object v2, v0, v1

    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/n4;->e:Ljava/lang/String;

    .line 40
    .line 41
    aput-object v2, v0, v1

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->f:Z

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x6

    .line 50
    aput-object v1, v0, v2

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->h:Z

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x7

    .line 59
    aput-object v1, v0, v2

    .line 60
    .line 61
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->j:I

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/16 v2, 0x8

    .line 68
    .line 69
    aput-object v1, v0, v2

    .line 70
    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PlayLoggerContext[package="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",packageVersionCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",logSource="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",logSourceName="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",uploadAccount="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",loggingId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->e:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ",logAndroidId="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->f:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ",isAnonymous="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->h:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ",qosTier="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->j:I

    .line 89
    .line 90
    const-string v2, "]"

    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

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
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->b:I

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->c:I

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x6

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x7

    .line 38
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->f:Z

    .line 39
    .line 40
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x8

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->g:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x9

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->h:Z

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Ls3/c;->a(Landroid/os/Parcel;IZ)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0xa

    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/n4;->j:I

    .line 60
    .line 61
    invoke-static {p1, v0, v1}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
