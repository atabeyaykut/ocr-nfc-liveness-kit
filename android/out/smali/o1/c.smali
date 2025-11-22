.class public final Lo1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo1/d<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lo1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/c<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lo1/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo1/c;

    invoke-direct {v0}, Lo1/c;-><init>()V

    sput-object v0, Lo1/c;->a:Lo1/c;

    new-instance v0, Lo1/c$a;

    invoke-direct {v0}, Lo1/c$a;-><init>()V

    sput-object v0, Lo1/c;->b:Lo1/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lo1/d$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
