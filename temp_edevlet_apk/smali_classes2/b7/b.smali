.class public final synthetic Lb7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb7/c;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lb7/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb7/b;->a:Lb7/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb7/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lb7/b;->a:Lb7/c;

    iget-boolean v1, p0, Lb7/b;->b:Z

    invoke-virtual {v0, v1}, Lb7/c;->c(Z)V

    return-void
.end method
