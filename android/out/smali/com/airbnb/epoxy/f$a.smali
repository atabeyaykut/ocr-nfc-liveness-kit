.class public final Lcom/airbnb/epoxy/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/airbnb/epoxy/x;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/airbnb/epoxy/f;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/f;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/f$a;->b:Lcom/airbnb/epoxy/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/epoxy/f$a;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/epoxy/f$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/epoxy/f$a;->b:Lcom/airbnb/epoxy/f;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/airbnb/epoxy/f;->a:Landroidx/collection/LongSparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/epoxy/f$a;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/epoxy/f$a;->b:Lcom/airbnb/epoxy/f;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/airbnb/epoxy/f;->a:Landroidx/collection/LongSparseArray;

    .line 10
    .line 11
    iget v1, p0, Lcom/airbnb/epoxy/f$a;->a:I

    .line 12
    .line 13
    add-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    iput v2, p0, Lcom/airbnb/epoxy/f$a;->a:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/airbnb/epoxy/x;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
