.class public final Lm4/c0;
.super Lm4/b0;
.source "SourceFile"


# static fields
.field public static final e:Lm4/c0;


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lm4/c0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lm4/c0;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lm4/c0;->e:Lm4/c0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lm4/b0;-><init>()V

    iput-object p1, p0, Lm4/c0;->c:[Ljava/lang/Object;

    iput p2, p0, Lm4/c0;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm4/c0;->d:I

    invoke-static {p1, v0}, Lb8/f;->E0(II)V

    iget-object v0, p0, Lm4/c0;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final h([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lm4/c0;->d:I

    iget-object v2, p0, Lm4/c0;->c:[Ljava/lang/Object;

    invoke-static {v2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lm4/c0;->d:I

    return v0
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lm4/c0;->d:I

    return v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final x()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm4/c0;->c:[Ljava/lang/Object;

    return-object v0
.end method
