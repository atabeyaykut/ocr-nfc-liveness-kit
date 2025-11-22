.class public final Lw6/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu6/a<",
        "Lw6/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lw6/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw6/g;

    invoke-direct {v0}, Lw6/g;-><init>()V

    sput-object v0, Lw6/h$a;->a:Lw6/g;

    return-void
.end method
