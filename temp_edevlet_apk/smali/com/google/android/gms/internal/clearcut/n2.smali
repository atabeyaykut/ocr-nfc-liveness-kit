.class public final Lcom/google/android/gms/internal/clearcut/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/n2;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/n2;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/n2;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/n2;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/n2;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-ge v0, v2, :cond_0

    return v0

    :cond_0
    and-int/lit16 v0, v0, 0x1fff

    const/16 v3, 0xd

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/clearcut/n2;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/clearcut/n2;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_1

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v3

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, 0xd

    goto :goto_0

    :cond_1
    shl-int v1, v4, v3

    or-int/2addr v0, v1

    return v0
.end method
