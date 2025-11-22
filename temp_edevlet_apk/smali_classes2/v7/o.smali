.class public final Lv7/o;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lv7/o;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lv7/a;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 1

    sget-object v0, Lv7/n;->a:Lv7/n;

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lv7/o;->a:Ljava/util/Set;

    iput-object v0, p0, Lv7/o;->b:Ljava/lang/Runnable;

    return-void
.end method
