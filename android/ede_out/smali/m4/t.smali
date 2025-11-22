.class public final Lm4/t;
.super Ls3/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lm4/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm4/u;

    invoke-direct {v0}, Lm4/u;-><init>()V

    sput-object v0, Lm4/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZLjava/lang/String;ZZLjava/lang/String;J)V
    .locals 3
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    new-instance v0, Lcom/google/android/gms/location/LocationRequest$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/LocationRequest$a;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/d;

    iget v2, v1, Lr3/d;->a:I

    iget-object v1, v1, Lr3/d;->b:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lw3/h;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_0

    .line 1
    :cond_1
    :goto_1
    iput-object p1, v0, Lcom/google/android/gms/location/LocationRequest$a;->n:Landroid/os/WorkSource;

    :cond_2
    const/4 p1, 0x1

    if-eqz p3, :cond_3

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/LocationRequest$a;->b(I)V

    :cond_3
    if-eqz p4, :cond_4

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequest$a;->c(I)V

    :cond_4
    const/16 p2, 0x1e

    if-eqz p5, :cond_5

    .line 3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p3, p2, :cond_6

    iput-object p5, v0, Lcom/google/android/gms/location/LocationRequest$a;->l:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz p8, :cond_6

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p3, p2, :cond_6

    iput-object p8, v0, Lcom/google/android/gms/location/LocationRequest$a;->l:Ljava/lang/String;

    :cond_6
    :goto_2
    if-eqz p6, :cond_7

    .line 4
    iput-boolean p1, v0, Lcom/google/android/gms/location/LocationRequest$a;->m:Z

    :cond_7
    if-eqz p7, :cond_8

    .line 5
    iput-boolean p1, v0, Lcom/google/android/gms/location/LocationRequest$a;->h:Z

    :cond_8
    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, p9, p2

    if-eqz p4, :cond_b

    const-wide/16 p2, -0x1

    cmp-long p4, p9, p2

    if-eqz p4, :cond_a

    const-wide/16 p2, 0x0

    cmp-long p4, p9, p2

    if-ltz p4, :cond_9

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :cond_a
    :goto_3
    const-string p2, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE"

    .line 6
    invoke-static {p1, p2}, Lr3/r;->b(ZLjava/lang/String;)V

    iput-wide p9, v0, Lcom/google/android/gms/location/LocationRequest$a;->i:J

    .line 7
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$a;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lm4/t;->a:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lm4/t;

    if-eqz v0, :cond_0

    check-cast p1, Lm4/t;

    iget-object v0, p0, Lm4/t;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p1, Lm4/t;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, p1}, Lr3/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lm4/t;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm4/t;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    iget-object v1, p0, Lm4/t;->a:Lcom/google/android/gms/location/LocationRequest;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {p1, v2, v1, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
