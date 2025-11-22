.class public abstract Lcom/google/android/gms/internal/vision/t3$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field public final a:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/lang/Object;)B
.end method

.method public abstract b(Ljava/lang/Object;JB)V
.end method

.method public abstract c(Ljava/lang/Object;JD)V
.end method

.method public abstract d(Ljava/lang/Object;JF)V
.end method

.method public final e(Ljava/lang/Object;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public abstract f(Ljava/lang/Object;JZ)V
.end method

.method public final g(IJLjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p4, p2, p3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public abstract h(JLjava/lang/Object;)Z
.end method

.method public abstract i(JLjava/lang/Object;)F
.end method

.method public abstract j(JLjava/lang/Object;)D
.end method

.method public final k(JLjava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public final l(JLjava/lang/Object;)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/t3$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method
