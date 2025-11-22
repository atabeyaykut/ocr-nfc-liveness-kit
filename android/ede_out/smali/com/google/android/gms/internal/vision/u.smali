.class public final Lcom/google/android/gms/internal/vision/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/n1;


# static fields
.field public static final a:Lcom/google/android/gms/internal/vision/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/u;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/u;->a:Lcom/google/android/gms/internal/vision/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/vision/h$b;->e:Lcom/google/android/gms/internal/vision/h$b;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/vision/h$b;->d:Lcom/google/android/gms/internal/vision/h$b;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/vision/h$b;->c:Lcom/google/android/gms/internal/vision/h$b;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/vision/h$b;->b:Lcom/google/android/gms/internal/vision/h$b;

    :goto_0
    if-eqz p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
