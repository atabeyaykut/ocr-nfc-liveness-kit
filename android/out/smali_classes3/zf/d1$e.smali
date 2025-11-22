.class public final Lzf/d1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzf/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/a<",
        "Landroid/content/SharedPreferences$Editor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Laf/a;


# direct methods
.method public constructor <init>(Laf/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/d1$e;->a:Laf/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzf/d1$e;->a:Laf/a;

    check-cast v0, Laf/b;

    invoke-virtual {v0}, Laf/b;->f()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method
