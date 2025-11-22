.class public abstract Lcom/google/android/gms/internal/clearcut/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/gms/internal/clearcut/c0;

.field public static final c:Lcom/google/android/gms/internal/clearcut/a0;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/c0;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/x0;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/c0;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/r;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lb0/a;

    invoke-direct {v0, v1}, Lb0/a;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/clearcut/z;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/z;-><init>(I)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/clearcut/x;->c:Lcom/google/android/gms/internal/clearcut/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/x;->a:I

    return-void
.end method

.method public static u([BII)Lcom/google/android/gms/internal/clearcut/c0;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/c0;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/x;->c:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/a0;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/c0;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract h(II)I
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/x;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/x;->size()I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/gms/internal/clearcut/x;->h(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/clearcut/x;->a:I

    :cond_1
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/y;-><init>(Lcom/google/android/gms/internal/clearcut/x;)V

    return-object v0
.end method

.method public abstract l(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract m(Lcom/google/android/gms/internal/clearcut/w;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()Z
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/x;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract w(I)B
.end method
