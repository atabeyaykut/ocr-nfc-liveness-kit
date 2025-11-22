.class public final La/b$b;
.super La/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:La/b;


# direct methods
.method public constructor <init>(La/b;)V
    .locals 0

    iput-object p1, p0, La/b$b;->b:La/b;

    invoke-direct {p0}, La/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v0(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, La/b$b;->b:La/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, La/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method
