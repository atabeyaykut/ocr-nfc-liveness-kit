.class public final Lp4/d1;
.super Lp4/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lp4/u0<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final e:Lp4/d1;


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp4/d1;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lp4/d1;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lp4/d1;->e:Lp4/d1;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lp4/u0;-><init>()V

    iput-object p1, p0, Lp4/d1;->c:[Ljava/lang/Object;

    iput p2, p0, Lp4/d1;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lp4/d1;->d:I

    invoke-static {p1, v0}, Lb8/f;->A0(II)V

    iget-object v0, p0, Lp4/d1;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final h([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lp4/d1;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lp4/d1;->d:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    return p2
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lp4/d1;->d:I

    return v0
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lp4/d1;->d:I

    return v0
.end method

.method public final u()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp4/d1;->c:[Ljava/lang/Object;

    return-object v0
.end method
