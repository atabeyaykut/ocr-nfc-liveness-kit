.class public final Ls4/r0;
.super Ls4/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls4/d0<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final e:Ls4/r0;


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls4/r0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Ls4/r0;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Ls4/r0;->e:Ls4/r0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ls4/d0;-><init>()V

    iput-object p1, p0, Ls4/r0;->c:[Ljava/lang/Object;

    iput p2, p0, Ls4/r0;->d:I

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

    iget v0, p0, Ls4/r0;->d:I

    invoke-static {p1, v0}, Ls4/b;->b(II)V

    iget-object v0, p0, Ls4/r0;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h([Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Ls4/r0;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Ls4/r0;->d:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Ls4/r0;->d:I

    return v0
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls4/r0;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Ls4/r0;->d:I

    return v0
.end method
