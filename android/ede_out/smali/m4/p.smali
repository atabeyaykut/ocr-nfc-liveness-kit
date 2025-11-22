.class public final Lm4/p;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lm4/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lm4/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lm4/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm4/f0;

    invoke-direct {v0}, Lm4/f0;-><init>()V

    sput-object v0, Lm4/p;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lm4/p;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lm4/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput p1, p0, Lm4/p;->a:I

    iput p2, p0, Lm4/p;->b:I

    iput-object p3, p0, Lm4/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lm4/p;->d:Ljava/lang/String;

    iput-object p5, p0, Lm4/p;->f:Ljava/lang/String;

    iput p6, p0, Lm4/p;->e:I

    sget-object p1, Lm4/b0;->b:Lm4/z;

    .line 1
    instance-of p1, p7, Lm4/y;

    if-eqz p1, :cond_1

    check-cast p7, Lm4/y;

    invoke-virtual {p7}, Lm4/y;->o()Lm4/b0;

    move-result-object p1

    invoke-virtual {p1}, Lm4/y;->w()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lm4/y;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p3, Lm4/c0;

    invoke-direct {p3, p1, p2}, Lm4/c0;-><init>([Ljava/lang/Object;I)V

    :goto_0
    move-object p1, p3

    goto :goto_3

    .line 3
    :cond_1
    invoke-interface {p7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    aget-object p4, p1, p3

    if-eqz p4, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "at index "

    .line 4
    invoke-static {p2, p3}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-nez p2, :cond_4

    .line 6
    :goto_2
    sget-object p1, Lm4/c0;->e:Lm4/c0;

    goto :goto_3

    :cond_4
    new-instance p3, Lm4/c0;

    invoke-direct {p3, p1, p2}, Lm4/c0;-><init>([Ljava/lang/Object;I)V

    goto :goto_0

    .line 7
    :cond_5
    :goto_3
    iput-object p1, p0, Lm4/p;->h:Lm4/b0;

    iput-object p8, p0, Lm4/p;->g:Lm4/p;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lm4/p;

    if-eqz v0, :cond_0

    check-cast p1, Lm4/p;

    iget v0, p1, Lm4/p;->a:I

    iget v1, p0, Lm4/p;->a:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lm4/p;->b:I

    iget v1, p1, Lm4/p;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lm4/p;->e:I

    iget v1, p1, Lm4/p;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm4/p;->c:Ljava/lang/String;

    iget-object v1, p1, Lm4/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm4/p;->d:Ljava/lang/String;

    iget-object v1, p1, Lm4/p;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lb8/f;->C0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm4/p;->f:Ljava/lang/String;

    iget-object v1, p1, Lm4/p;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lb8/f;->C0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm4/p;->g:Lm4/p;

    iget-object v1, p1, Lm4/p;->g:Lm4/p;

    invoke-static {v0, v1}, Lb8/f;->C0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm4/p;->h:Lm4/b0;

    iget-object p1, p1, Lm4/p;->h:Lm4/b0;

    invoke-virtual {v0, p1}, Lm4/b0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lm4/p;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lm4/p;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lm4/p;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lm4/p;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lm4/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    iget-object v2, p0, Lm4/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lm4/p;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lm4/p;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lm4/p;->a:I

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget v2, p0, Lm4/p;->b:I

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lm4/p;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget-object v2, p0, Lm4/p;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    iget v2, p0, Lm4/p;->e:I

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Ls3/c;->j(Landroid/os/Parcel;II)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    iget-object v2, p0, Lm4/p;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1, v1, v2}, Ls3/c;->n(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    iget-object v2, p0, Lm4/p;->g:Lm4/p;

    .line 45
    .line 46
    invoke-static {p1, v1, v2, p2}, Ls3/c;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lm4/p;->h:Lm4/b0;

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    invoke-static {p1, v1, p2}, Ls3/c;->q(Landroid/os/Parcel;ILjava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Ls3/c;->s(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
