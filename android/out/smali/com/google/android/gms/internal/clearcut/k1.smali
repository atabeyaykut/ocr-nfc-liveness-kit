.class public abstract Lcom/google/android/gms/internal/clearcut/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/clearcut/l1;

.field public static final b:Lcom/google/android/gms/internal/clearcut/m1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/l1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/l1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/k1;->a:Lcom/google/android/gms/internal/clearcut/l1;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/m1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/m1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/k1;->b:Lcom/google/android/gms/internal/clearcut/m1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/lang/Object;)V
.end method

.method public abstract b(JLjava/lang/Object;Ljava/lang/Object;)V
.end method
