.class public final Lq6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lq6/a;->a:I

    return-void
.end method


# virtual methods
.method public final e([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 4

    array-length v0, p1

    iget v1, p0, Lq6/a;->a:I

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    div-int/lit8 v0, v1, 0x2

    sub-int v2, v1, v0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
