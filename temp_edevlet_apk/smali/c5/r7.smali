.class public final Lc5/r7;
.super Ls3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc5/r7;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/s7;

    invoke-direct {v0}, Lc5/s7;-><init>()V

    sput-object v0, Lc5/r7;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0
    .param p5    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    iput p1, p0, Lc5/r7;->a:I

    iput-object p2, p0, Lc5/r7;->b:Ljava/lang/String;

    iput-wide p3, p0, Lc5/r7;->c:J

    iput-object p5, p0, Lc5/r7;->d:Ljava/lang/Long;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc5/r7;->g:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    iput-object p9, p0, Lc5/r7;->g:Ljava/lang/Double;

    :goto_1
    iput-object p7, p0, Lc5/r7;->e:Ljava/lang/String;

    iput-object p8, p0, Lc5/r7;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ls3/a;-><init>()V

    invoke-static {p4}, Lr3/r;->f(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lc5/r7;->a:I

    iput-object p4, p0, Lc5/r7;->b:Ljava/lang/String;

    iput-wide p1, p0, Lc5/r7;->c:J

    iput-object p5, p0, Lc5/r7;->f:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    iput-object p1, p0, Lc5/r7;->d:Ljava/lang/Long;

    iput-object p1, p0, Lc5/r7;->g:Ljava/lang/Double;

    iput-object p1, p0, Lc5/r7;->e:Ljava/lang/String;

    return-void

    :cond_0
    instance-of p2, p3, Ljava/lang/Long;

    if-eqz p2, :cond_1

    check-cast p3, Ljava/lang/Long;

    iput-object p3, p0, Lc5/r7;->d:Ljava/lang/Long;

    iput-object p1, p0, Lc5/r7;->g:Ljava/lang/Double;

    iput-object p1, p0, Lc5/r7;->e:Ljava/lang/String;

    return-void

    :cond_1
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p1, p0, Lc5/r7;->d:Ljava/lang/Long;

    iput-object p1, p0, Lc5/r7;->g:Ljava/lang/Double;

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lc5/r7;->e:Ljava/lang/String;

    return-void

    :cond_2
    instance-of p2, p3, Ljava/lang/Double;

    if-eqz p2, :cond_3

    iput-object p1, p0, Lc5/r7;->d:Ljava/lang/Long;

    check-cast p3, Ljava/lang/Double;

    iput-object p3, p0, Lc5/r7;->g:Ljava/lang/Double;

    iput-object p1, p0, Lc5/r7;->e:Ljava/lang/String;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lc5/t7;)V
    .locals 6

    iget-object v4, p1, Lc5/t7;->c:Ljava/lang/String;

    iget-wide v1, p1, Lc5/t7;->d:J

    iget-object v3, p1, Lc5/t7;->e:Ljava/lang/Object;

    iget-object v5, p1, Lc5/t7;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc5/r7;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lc5/r7;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc5/r7;->g:Ljava/lang/Double;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lc5/r7;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lc5/s7;->a(Lc5/r7;Landroid/os/Parcel;)V

    return-void
.end method
